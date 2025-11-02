import mysql from 'mysql2/promise';
import fs from 'fs/promises';
import path from 'path';

async function parseEnvFile(filePath) {
    const data = await fs.readFile(filePath, 'utf-8');
    const lines = data.split('\n');
    for (const line of lines) {
        const match = line.match(/^\s*([\w.-]+)\s*=\s*(.*)?\s*$/);
        if (match) {
            const key = match[1];
            let value = match[2] || '';
            if (value.length > 0 && value.charAt(0) === '"' && value.charAt(value.length - 1) === '"') {
                value = value.replace(/\\n/g, '\n');
                value = value.substring(1, value.length - 1);
            } else {
                value = value.trim();
            }
            process.env[key] = value;
        }
    }
}


async function main() {
  await parseEnvFile(path.resolve(process.cwd(), '.env'));
  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    console.error('DATABASE_URL is not set');
    process.exit(1);
  }

  // Add the multipleStatements flag to the connection URL
  const connectionUrl = new URL(databaseUrl);
  connectionUrl.searchParams.append('multipleStatements', 'true');

  let connection;
  try {
    connection = await mysql.createConnection(connectionUrl.href);
    console.log('Connected to the database.');

    const sqlFilePath = path.resolve(process.cwd(), 'bukmycl_susi.sql');
    const sql = await fs.readFile(sqlFilePath, 'utf-8');
    console.log('Read the SQL file.');

    await connection.query(sql);

    console.log('SQL file imported successfully.');
  } catch (error) {
    console.error('Error importing SQL file:', error);
  } finally {
    if (connection) {
      await connection.end();
      console.log('Connection closed.');
    }
  }
}

main();

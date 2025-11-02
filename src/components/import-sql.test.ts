/** @vitest-environment node */

import { test, expect } from 'vitest';
import mysql from 'mysql2/promise';
import fs from 'fs/promises';
import path from 'path';
import { URL } from 'url';

async function parseEnvFile(filePath: string) {
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

test('should import the SQL file', async () => {
  await parseEnvFile(path.resolve(process.cwd(), '.env'));
  const databaseUrl = process.env.DATABASE_URL;
  expect(databaseUrl).toBeDefined();

  // Add the multipleStatements flag to the connection URL
  const connectionUrl = new URL(databaseUrl!);
  connectionUrl.searchParams.append('multipleStatements', 'true');

  let connection: mysql.Connection | undefined;
  try {
    connection = await mysql.createConnection(connectionUrl.href);
    console.log('Connected to the database.');

    const sqlFilePath = path.resolve(process.cwd(), 'bukmycl_susi.sql');
    const sql = await fs.readFile(sqlFilePath, 'utf-8');
    console.log('Read the SQL file.');

    await connection.query(sql);

    console.log('SQL file imported successfully.');
    expect(true).toBe(true);
  } catch (error) {
    console.error('Error importing SQL file:', error);
    expect(error).toBeNull();
  } finally {
    if (connection) {
      await connection.end();
      console.log('Connection closed.');
    }
  }
});

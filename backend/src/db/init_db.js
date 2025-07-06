require("dotenv").config();
const fs = require("fs");
const path = require("path");
const Database = require("better-sqlite3");

const dbPath = process.env.DB_PATH || "/app/data/portfolio.sqlite";
const firstRun = !fs.existsSync(dbPath);
const db = new Database(dbPath);

if (firstRun) {
  const schema = fs.readFileSync(path.join(__dirname, "schema.sql"), "utf8");
  db.exec(schema);
  console.log("SQLite database is created:", dbPath);
} else {
  console.log("SQLite already exists:", dbPath);
}

db.close();
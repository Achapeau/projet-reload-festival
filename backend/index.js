const express = require("express");
require("dotenv").config();
const mysql = require("mysql2/promise");

const { APP_PORT, DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME } =
  process.env;

const app = require("./src/app");

const port = parseInt(APP_PORT ?? "8000", 10);

app.use(express.json());

const createPoolInstance = () => {
  try {
    const pool = mysql.createPool({
      host: DB_HOST,
      port: DB_PORT,
      user: DB_USER,
      password: DB_PASSWORD,
      database: DB_NAME,
      waitForConnections: true,
    });
    return pool;
  } catch (err) {
    console.error(err);
    throw err;
  }
};
const pool = createPoolInstance();

app.get("/artists", async (req, res) => {
  const sql = "SELECT * FROM artists_descriptions;";

  try {
    const [artists] = await pool.query(sql);
    res.send(artists);
  } catch (err) {
    console.error(err);
    res.sendStatus(500);
  }
});

app.get("/artist/:id", async (req, res) => {
  const { id } = req.params;
  const sql = "SELECT * FROM artists_descriptions WHERE id= ?";

  try {
    const [artist] = await pool.query(sql, parseInt(id, 10));
    if (artist.length) {
      res.send(artist);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.error(err);
    res.sendStatus(500);
  }
});

app.get("/name/:name", async (req, res) => {
  const { name } = req.params;
  const sql = "SELECT * FROM artists_descriptions WHERE name= ?";

  try {
    const [artist] = await pool.query(sql, name);
    if (artist.length) {
      res.send(artist);
    } else {
      res.sendStatus(404);
    }
  } catch (err) {
    console.error(err);
    res.sendStatus(500);
  }
});

app.listen(port, (err) => {
  if (err) {
    console.error("Something bad happened");
  } else {
    // eslint-disable-next-line no-restricted-syntax
    console.log(`Server is listening on ${port}`);
  }
});

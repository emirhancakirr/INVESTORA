// src/server.js
import express from "express";
import { PrismaClient } from "@prisma/client";
import dotenv from "dotenv"; dotenv.config();

const prisma = new PrismaClient();
const app = express();
app.use(express.json());

// Örnek route
app.get("/api/funds", async (_, res) => {
  const funds = await prisma.fund.findMany();
  res.json(funds);
});

app.listen(process.env.PORT, () =>
  console.log(`API running on :${process.env.PORT}`)
);
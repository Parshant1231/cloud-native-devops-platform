const express = require("express");
const path = require("path");
const app = express();

app.get("/", (req, res) => {
  // This sends the index.html file located in the same folder as app.js
  res.sendFile(path.join(__dirname, "index.html"));
});

app.listen(3000, () => {
  console.log("🚀 Cloud Native Platform running on http://localhost:3000");
});
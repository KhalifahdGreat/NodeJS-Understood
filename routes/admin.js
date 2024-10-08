const express = require("express");
const path = require("path");
const router = express.Router();
const rootDir = require("../utils/path");
// reached from /admin
router.get("/add-product", (req, res, next) => {
  res.sendFile(path.join(rootDir, "views", "add-product.html"));
});

// reached from /admin
router.post("/add-product", (req, res, next) => {
  res.sendFile(path.join(rootDir, "views", "add-product.html"));
});

module.exports = router;

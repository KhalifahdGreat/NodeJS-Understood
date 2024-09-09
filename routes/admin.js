const express = require("express");
const path = require("path");
const router = express.Router();

// reached from /admin
router.get("/add-product", (req, res, next) => {
  res.sendFile(path.join(__dirname, "../", "views", "addProduct.html"));
});

// reached from /admin
router.post("/add-product", (req, res, next) => {
  res.sendFile(path.join(__dirname, "../", "views", "addProduct.html"));
});

module.exports = router;

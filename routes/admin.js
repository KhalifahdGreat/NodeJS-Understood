const express = require("express");

const router = express.Router();

// reached from /admin
router.get("/add-product", (req, res, next) => {
  res.send("<h1>Users Page</h1>");
});

// reached from /admin
router.get("/products", (req, res, next) => {
  res.redirect("/");
});

module.exports = router;

var express = require("express");

var router = express.Router();

// Import the model (burger.js) to use its database functions.
var burgerObjectFunctions = require("../models/burger.js");

// Create all our routes and set up logic within those routes where required.
router.get("/", function(req, res) {
    burgerObjectFunctions.selectAll(function(data) {
      var hbsObject = {
        burgers: data
      };
      console.log(hbsObject);
      res.render("index", hbsObject);
    });
  });
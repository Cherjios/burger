var express = require("express");

var router = express.Router();

// Import the model (burger.js) to use its database functions.
var burgerObjectFunctions = require("../models/burger.js");
var express = require("express")
var router = express.Router()

/* GET home page. */
router.get("/", function (req, res, next) {
  res.send({
    status: "success",
    employee_name: process.env.employee_name
  })
})

module.exports = router

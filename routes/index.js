var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.json({ thing: 'something' });
});

module.exports = router;

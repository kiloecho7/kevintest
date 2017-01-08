var express = require('express');
var bodyParser = require('body-parser');
var app = express();
// var logger = require('morgan');
// var cookieParser = require('cookie-parser');


// app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
// app.use(cookieParser());


var router = express.Router();
router.get('/', function(req, res) {
  res.json({ app: 'root2' });
});
router.get('/api', function(req, res) {
  res.json({ app: 'api2' });
});
app.use('/', router);


app.use(function(req, res, next) {
 var err = new Error('Not Found');
 err.status = 404;
 next(err);
});

app.use(function(err, req, res, next) {
 // set locals, only providing error in development
 res.locals.message = err.message;
 res.locals.error = req.app.get('env') === 'development' ? err : {};
 res.status(err.status || 500);
 //TODO This won't work anymore because we don't havea ny views. What can we do?
 res.json('error');
});


module.exports = app;

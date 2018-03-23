'use strict';

var os = require('os');

var express = require('express');
var app = express();

var hostname = os.hostname();
var env_config = process.env.CONFIG;

app.set('views', 'views');
app.set('view engine', 'pug');

app.get('/', function(req, res) {
    res.render('index', {
        hostname: hostname,
        config: env_config
    });
});

app.listen(8080);
module.exports.getApp = app;

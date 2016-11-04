var path = require('path');
var express = require('express');
var os = require("os");

var app = express();
var hostname = os.hostname();

var staticPath = path.join(__dirname, '/public');
app.use(express.static(staticPath));



app.listen(3030, function() {
  console.log(hostname, 'listening on 3030 ');
});
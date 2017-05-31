var express = require('express')
var app = express()

// respond with "hello world" when a GET request is made to the homepage
app.get('/', function (req, res) {
	res.sendFile(__dirname + '/index.html')
})

app.listen(8081)
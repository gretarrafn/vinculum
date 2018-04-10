var http = require('http');
var ip = require('ip');

console.log('Started.');

http.createServer(function (req, res) {
	    var addr = ip.address();
	    res.writeHead(200, {'Content-Type': 'text/plain'});
	    res.end('Hello World! or test From: '+addr);
}).listen(8081); 

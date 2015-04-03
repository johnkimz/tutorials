var assert = require('assert'),
	CountStream = require('./countstream'),
	countStream = new CountStream('example'),
	fs = require('fs'),
	passed = 0;

	countStream.on('total', function(count) {
		assert.equal(count, 1);
		passed++;
	});

	fs.createReadStream(__filename).pipe(countStream);

	process.on('exit', function() {
		console.log('Assertions passed:', passed);
	});
module.exports = {
	entry: "./client/app.ls",
	output: {
		path: __dirname, 
		filename: "./bundle.js"
	},
	module: {
		loaders: [
			{test: /\.ls$/, loader: 'livescript-loader'}
		]
	}
}; 



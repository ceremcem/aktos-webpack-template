module.exports = 
  entry: 
    * "./client/app.ls"
    * "file?name=index.html!jade-html!./index.jade"
  output: 
    path: __dirname
    filename: "./bundle.js"
  module: 
    loaders: 
      * test: /\.ls$/, loader: 'livescript-loader'
      * test: /\.jade$/, loader: 'jade-html-loader'


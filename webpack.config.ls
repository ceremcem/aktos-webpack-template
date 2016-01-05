require \shelljs/global

# constants 
compile-dir = "./build"


echo "clear build directory"
rm \-rf \./build/*


module.exports = 
  entry: 
    * "./src/client/app.ls"
    * "file?name=#{compile-dir}/index.html!jade-html!./src/client/index.jade"
  output: 
    path: __dirname
    filename: "#{compile-dir}/app.js"
  module: 
    loaders: 
      * test: /\.ls$/, loader: 'livescript-loader'
      * test: /\.jade$/, loader: 'jade-html-loader'


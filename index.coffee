symfio = require "symfio"

module.exports = container = symfio "translator", __dirname

loader = container.get "loader"

loader.use require "symfio-contrib-express"
loader.use require "symfio-contrib-express-logger"
loader.use require "symfio-contrib-mongoose"
loader.use require "./plugins/calculator"
loader.use require "symfio-contrib-fixtures"

loader.load() if require.main is module

cruder = require "cruder"


module.exports = (container, callback) ->
  app = container.get "app"

  app.post "/calculator", (req, res) ->
    params = req.body

    res.send 500 unless params.translations and params.content.length

    result = {}
    unless params.translations instanceof Array
      params.translations = [params.translations] 

    params.translations.forEach (translation) =>
      result[translation] =
        "price": params.content.length * 0.01
        "translation-date": new Date

    res.send result

  callback()

express = require 'express'
app = express()

app.get '/', (req,res) ->
  res.send 'hello!'

server = app.listen 3000, () ->
  console.log 'listening on 3000...'



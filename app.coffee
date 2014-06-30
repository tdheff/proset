express = require 'express'
http = require 'http'
socket = require 'socket.io'

app = express()
server = http.Server app
io = socket server

app.get '/', (req,res) ->
  res.send 'hello!'

io.on 'connection', () ->
  console.log 'connected'

server.listen 3000, () ->
  console.log 'listening on 3000...'

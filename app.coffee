express = require 'express'
http = require 'http'
socket = require 'socket.io'

app = express()
server = http.Server app
io = socket server

Game = require './models/game'

my_game = new Game 1

app.get '/', (req,res) ->
  if my_game.return_true()
    res.send 'hello!'
  else
    res.send 'goodbye!'

io.on 'connection', () ->
  console.log 'connected'

server.listen 3000, () ->
  console.log 'listening on 3000...'

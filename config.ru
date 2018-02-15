require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/music_controller.rb'
require_relative './controllers/static_controller.rb'
require_relative './controllers/songs_controller.rb'

use Rack::MethodOverride

run Rack::Cascade.new([
  MusicController,
  StaticController,
  SongsController
])

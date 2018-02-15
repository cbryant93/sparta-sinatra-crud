class SongsController < Sinatra::Base
  #sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  #sets the view directory correctly
  set :view, Proc.new { File.join(root,"views")}

  #Enable reloader
  configure :development do
    register Sinatra::Reloader
  end

  $song = [
    {
      id: 0,
      name: "Sexy Back"
    },
    {
      id: 1,
      name: "Shape of You"
    },
    {
      id: 2,
      name: "Controller"
    }
  ]

  get '/songs' do
    @title = "Index Page"
    @song = $song
    erb :'songs/index'
  end

  get '/songs/:id' do
    @title = $song[params[:id].to_i][:title]
    @body = $song[params[:id].to_i][:body]
    @songs = $song
    @song = $song[params[:id].to_i][:name]
    erb :'songs/show'
  end

end

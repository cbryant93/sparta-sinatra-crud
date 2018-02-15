class StaticController < Sinatra::Base
  #sets root of the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  #sets the view directory correctly
  set :view, Proc.new { File.join(root,"views")}

  #Enable reloader
  configure :development do
    register Sinatra::Reloader
  end

  # Landing page
  get '/' do

    @title = "Favourite Music Artists"

    @posts = $posts

    erb :'posts/index'

  end
end

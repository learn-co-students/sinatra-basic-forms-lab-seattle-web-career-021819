require_relative 'config/environment'

class App < Sinatra::Base
  # GET request to load a homepage, which goes to main route /
  get '/' do
    erb :index
  end

  # 1st build models/puppy.rb
  # then this get method renders a form that can POST a name, breed, and age
  # also receives a request from /new at /puppy (post)
  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params[:name]
    @breed  = params[:breed]
    @age  = params[:age]
    erb :display_puppy
  end
end

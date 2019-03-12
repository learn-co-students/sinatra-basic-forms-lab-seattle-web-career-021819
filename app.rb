require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  # get '/puppy' do
  #   @name =
  #   @breed =
  #   @age =
  #   erb :display_puppy
  # end

  post '/puppy' do
    pup = Puppy.new(params[:name], params[:breed], params[:age])
    @name = pup.name
    @breed = pup.breed
    @age = pup.age
    erb :display_puppy
  end

end

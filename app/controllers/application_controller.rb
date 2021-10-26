
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end

# COINS

  get '/coins' do
    coins = Coin.all
    coins.to_json
  end


  get '/coins/:id' do
    coins = Coin.find(params[:id])
    coins.to_json
  end

# FAVES
  
  get '/favorites' do
    favorites = Favorite.all
    favorites.to_json
  end

  get '/favorites/:id' do
    favorites = Favorite.find(params[:id])
    favorites.to_json
  end


  post '/favorites' do
    favorites = Favorites.create(user_id: params[:user_id], coin_id: params[:coin_id])
    favorites.to_json
  end


  # USERS 


  get '/users' do
    users = User.all
    users.to_json
  end


  get '/users/:id' do
    users = User.find(params[:id])
    users.to_json
  end

  
  post '/users' do
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    user.to_json
  end



  # get '/signup' do
  #   "Signup Hello World"
  # end

end





  
#   # configure do
#   #   enable :sessions
#   #   set :session_secret, "secret"
#   # end





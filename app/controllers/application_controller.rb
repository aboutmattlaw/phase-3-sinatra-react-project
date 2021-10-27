
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end

# COINS

  get '/coins' do #shows all coins
    coins = Coin.all
    coins.to_json
  end

  get '/coins/:id' do #shows specific coin
    coins = Coin.find(params[:id])
    coins.to_json
  end




# FAVES
  
  get '/favorites' do #shows all faves
    favorites = Favorite.all
    favorites.to_json
  end

  get '/favorites/:id' do #shows specific fave
    favorites = Favorite.find(params[:id])
    favorites.to_json
  end

  get '/favorites/byuser/:user_id' do #shows faves of a user... WIP
    favorites = Favorite.find_by(params[:user_id])
    favorites.to_json
  end

  
  
  post '/favorites' do #creates fave
    favorites = Favorite.create(user_id: params[:user_id], coin_id: params[:coin_id])
    favorites.to_json
  end


  # USERS 


  get '/users' do #shows all users
    users = User.all
    users.to_json
  end


  get '/users/:id' do #shows specific user
    users = User.find(params[:id])
    users.to_json
  end

  get '/users/:id/favorites' do #shows specific user
    users = User.(params[:id]).favorites
    users.to_json
  end

  

  post '/users' do #creates a new user
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    user.to_json
  end



  # get '/myfriendees' do #shows all my friendees
  #   friendees = self.friendees
  #   friendship.to_json
  # end

  get '/friendships' do #shows all friendships
    friendship = Friendship.all
    friendship.to_json
  end 
  
  get '/friendship/:id' do #shows friendships for a user
    friendship = Friendship.find(params[:id])
    friendship.to_json
  end

  post '/friendships' do #makes new friendships
    friendship = Friendship.create(friender_id: params[:friender_id], friendee_id: params[:friendee_id])
    friendship.to_json
  end  

  delete '/friendship/:id' do #deletes specific friendships
    friendship = Friendship.find(params[:id])
    friendship.destroy
  end


end



  # get '/signup' do
  #   "Signup Hello World"
  # end






  
#   # configure do
#   #   enable :sessions
#   #   set :session_secret, "secret"
#   # end





# post "login" path to auth_controller "create" method
# get "logged_in?" path to application_controller "logged_in?" method
# users_controller create method before_action :authentication


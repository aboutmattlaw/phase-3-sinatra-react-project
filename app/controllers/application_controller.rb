
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end

# COINS

  get '/coins' do #shows all coins (works)
    coins = Coin.all
    coins.to_json
  end

  get '/coins/:id' do #shows specific coin (works)
    coins = Coin.find(params[:id])
    coins.to_json
  end

  get '/coin/:id/users' do
    coins = Coin.find(params[:id]).users
    coins.to_json
  end




# FAVES
  
  get '/favorites' do #shows all faves (works)
    favorites = Favorite.all
    favorites.to_json
  end

  get '/favorites/:id' do #shows specific fave (works)
    favorites = Favorite.find(params[:id])
    favorites.to_json
  end

  get '/favorites/byuser/:user_id' do #shows faves of a user... WIP
    favorites = Favorite.select{ |fave| fave[:user_id] == params[:user_id] }
    favorites.to_json
  end

  
  
  post '/favorites' do #creates fave (works)
    favorites = Favorite.create(user_id: params[:user_id], coin_id: params[:coin_id])
    favorites.to_json
  end


  # USERS 


  get '/users' do #shows all users (works)
    users = User.all
    users.to_json
  end


  get '/users/:id' do #shows specific user (works)
    users = User.find(params[:id])
    users.to_json
  end

  get '/users/:id/favorites' do #shows specific user's fave coins (works)
    users = User.find(params[:id]).coins
    users.to_json
  end

  get '/users/:id/friends' do #shows specific user's friends they reached out to (works)
    friendees = User.find(params[:id]).friendees
    friendees.to_json
  end
  

  get '/users/:id/notfriends' do #shows specific user's friends they reached out to (works)
    friendees = User.find(params[:id]).not_my_friend
    friendees.to_json
  end
  



  get '/users/:id/frienders' do #shows people who reached out to specfic friend (works)
    frienders = User.find(params[:id]).frienders
    frienders.to_json
  end


  
  
  
  
  post '/users' do #creates a new user (works)
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    session[:user_id] = user.id
    user.to_json
  end


  post '/users' do #creates a new user (works)
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    session[:user_id] = user.id
    user.to_json
  end



# Friendship

  get '/friendships' do #shows all friendships (works)
    friendship = Friendship.all
    friendship.to_json
  end 
  
  # get '/friendship/:id' do #shows friendships for a user
  #   friendship = Friendship.find(params[:id]).friendees
  #   friendship.to_json
  # end

  post '/friendships' do #makes new friendships (works)
    friendship = Friendship.create(friender_id: params[:friender_id], friendee_id: params[:friendee_id])
    friendship.to_json
  end  

  delete '/friendship/:id' do #deletes specific friendships (works)
    friendship = Friendship.find(params[:id])
    friendship.destroy
  end

  get '/logout' do
    session.clear
  end



  # post '/login' do
  #   login = User.find_by(params[:username])
  #   if user && user.authenticate(params[:password])
  #     session[:user_id] = user.id
  #     redirect '/'
  #   else puts "woof"
  #   end
  # end


  # post '/users' do #creates a new user (works)
  #   user = User.create(username: params[:username], email: params[:email], password: params[:password])
  #   session[:user_id] = user.id
  #   user.to_json




end






  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end








#   useEffect(() => {
#     const currentUserId = localStorage.user_id

#   fetch(`http://localhost:9292/users/${currentUserId}/favorites`)
#   .then((r) => r.json())
#   .then((data) => setMyCoinList(data));
# }, []);

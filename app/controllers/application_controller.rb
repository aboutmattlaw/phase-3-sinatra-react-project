
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    "Hello World"
  end

  get '/coins' do
    coins = Coin.all
    coins.to_json
  end

  get '/favorites' do
    favorites = Favorite.all
    favorites.to_json
  end

  get '/users' do
    users = User.all
    users.to_json
  end


  post '/users' do
    user = User.create(username: params[:username], email: params[:email], password: params[:password])
    user.to_json
  end



  # create_table "users", force: :cascade do |t|
  #   t.string "username"
  #   t.string "email"
  #   t.string "password_digest"

  get '/signup' do
    "Signup Hello World"
  end

end





  
#   # configure do
#   #   enable :sessions
#   #   set :session_secret, "secret"
#   # end





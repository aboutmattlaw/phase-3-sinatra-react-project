Friendship.destroy_all
Favorite.destroy_all
User.destroy_all
Coin.destroy_all



puts "Seeing Users"
User.create(username: "Albert", email: "albert@gmail.com", password: "password124")
User.create(username: "Betty", email: "betty@gmail.com", password: "password124")
User.create(username: "Carlton", email: "carlton@gmail.com", password: "password124")
User.create(username: "Deb", email: "deb@gmail.com", password: "password124")
User.create(username: "Ed", email: "ed@gmail.com", password: "password124")

puts "Seeing Coins"
# Coin.create(name: "Bitcoin", symbol: "BTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "bitcoin" )
# Coin.create(name: "Citcoin", symbol: "CTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "citcoin" )
# Coin.create(name: "Ditcoin", symbol: "DTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "ditcoin" )
# Coin.create(name: "Eitcoin", symbol: "ETC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "ditcoin" )



# create_table "coins", force: :cascade do |t|
#     t.string "name"
#     t.string "symbol"
#     t.string "image_url"
#     t.string "coin_api_id"

# "symbol"=>"btc",
#   "name"=>"Bitcoin",
#   "image"=>"https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
#   "current_price"=>59094,
#   "market_cap"=>1110255316639,
#   "market_cap_rank"=>1,
#   "fully_diluted_valuation"=>1

response = RestClient.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=200&page=1&sparkline=false")
data = JSON.parse(response)
data.each do |coin|
    Coin.create(name: coin["name"], symbol: coin["symbol"], image_url: coin["image"], coin_api_id: coin["id"] )
end





puts "Seeing Favorites"
Favorite.create(user_id: 1, coin_id: 1)
Favorite.create(user_id: 2, coin_id: 2)
Favorite.create(user_id: 3, coin_id: 3)
Favorite.create(user_id: 4, coin_id: 4)


puts "Seeing Friendships"

Friendship.create(friender_id: 1, friendee_id: 2)
Friendship.create(friender_id: 2, friendee_id: 3)
Friendship.create(friender_id: 4, friendee_id: 5)
Friendship.create(friender_id: 5, friendee_id: 1)
Friendship.create(friender_id: 5, friendee_id: 2)
Friendship.create(friender_id: 5, friendee_id: 3)


puts "✅ Done seeding!"


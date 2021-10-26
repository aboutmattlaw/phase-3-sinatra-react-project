puts "Seeing Users"
User.create(username: "Albert", email: "albert@gmail.com", password: "password124")
User.create(username: "Betty", email: "betty@gmail.com", password: "password124")
User.create(username: "Carlton", email: "carlton@gmail.com", password: "password124")
User.create(username: "Deb", email: "deb@gmail.com", password: "password124")
User.create(username: "Ed", email: "ed@gmail.com", password: "password124")

puts "Seeing Coins"
Coin.create(name: "Bitcoin", symbol: "BTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "bitcoin" )
puts "Seeing Coins"
Coin.create(name: "Citcoin", symbol: "CTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "citcoin" )
puts "Seeing Coins"
Coin.create(name: "Ditcoin", symbol: "DTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "ditcoin" )



puts "Seeing Favorites"
Favorite.create(user_id: 1, coin_id: 1)
Favorite.create(user_id: 2, coin_id: 2)
Favorite.create(user_id: 3, coin_id: 3)


puts "Seeing Friendships"

Friendship.create(friender_id: 1, friendee_id: 2)


puts "✅ Done seeding!"


puts "Seeing Users"
User.create(username: "Albert", email: "albert@gmail.com")
User.create(username: "Betty", email: "betty@gmail.com")
User.create(username: "Carlton", email: "carlton@gmail.com")
User.create(username: "Deb", email: "deb@gmail.com")
User.create(username: "Ed", email: "ed@gmail.com")

puts "Seeing Coins"
Coin.create(name: "Bitcoin", symbol: "BTC", image_url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579", coin_api_id: "bitcoin" )



puts "Seeing Favorites"
Favorite.create(user_id: 1, coin_id: 1)
Favorite.create(user_id: 2, coin_id: 2)
Favorite.create(user_id: 3, coin_id: 3)


puts "Seeing Friendships"

Friendship.create(friender_id: 1, friendee_id: 2)


puts "✅ Done seeding!"


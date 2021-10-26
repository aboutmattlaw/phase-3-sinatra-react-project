class Coin < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def fave_coin 
        # need to populate with dynamic values
        Favorite.create(user_id: 1, coin_id: 1)
        end


end
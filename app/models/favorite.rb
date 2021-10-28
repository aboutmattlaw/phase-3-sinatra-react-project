class Favorite < ActiveRecord::Base
    belongs_to :coin
    belongs_to :user
    validates_uniqueness_of   :coin_id, scope: :user_id

    def find_my_faves 
        Favorite.select {|faves|faves.favorites == user.id} 
    end



    


end
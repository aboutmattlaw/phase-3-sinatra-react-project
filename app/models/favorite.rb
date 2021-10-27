class Favorite < ActiveRecord::Base
    belongs_to :coin
    belongs_to :user

    def find_my_faves 
        Favorite.select {|faves|faves.favorites == user.id} 
    end



    


end
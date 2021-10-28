class Favorite < ActiveRecord::Base
    belongs_to :coin
    belongs_to :user
    validates_uniqueness_of   :coin_id, scope: :user_id

  
    


end
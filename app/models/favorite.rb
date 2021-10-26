class Favorite < ActiveRecord::Base
    belongs_to :coins
    belongs_to :users
end
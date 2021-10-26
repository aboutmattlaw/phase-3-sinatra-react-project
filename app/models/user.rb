class User < ActiveRecord::Base
    has_many :favorites
    has_many :coins, through: :favorites
    has_many :friendships
    has_many :friends, through: :friendships
end





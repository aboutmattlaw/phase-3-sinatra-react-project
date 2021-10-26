class User < ActiveRecord::Base
    has_many :favorites
    has_many :coins, through: :favorites
    # has_many :friendships
    # has_many :friends, through: :friendships

    has_secure_password
        
end
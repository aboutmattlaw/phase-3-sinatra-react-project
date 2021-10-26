class User < ActiveRecord::Base
    has_many :favorites
    has_many :coins, through: :favorites
    has_many :friendees,  foreign_key: :friendee_id, class_name: 'Friendship'
    has_many :frienders, through: :friendees     
end





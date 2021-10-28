class User < ActiveRecord::Base
    has_many :favorites
    has_many :coins, through: :favorites
    has_many :followed_users, class_name: 'Friendship', foreign_key: :friender_id
    has_many :friendees, through: :followed_users

    has_many :people_who_follow_me, class_name: 'Friendship', foreign_key: :friendee_id
    has_many :frienders, through: :people_who_follow_me


    has_secure_password
    validates :username, :email, uniqueness: { case_sensitive: false }
        
    def notfriends
        self.friendees
    end

end

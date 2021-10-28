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
        
    end

end


# id	friender_id	friendee_id
# 1	1	2
# 2	2	3
# 3	4	5
# 4	5	1
# 5	5	2
# 6	5	
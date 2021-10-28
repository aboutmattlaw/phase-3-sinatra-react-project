class User < ActiveRecord::Base
    has_many :favorites
    has_many :coins, through: :favorites
    has_many :followed_users, class_name: 'Friendship', foreign_key: :friender_id
    has_many :friendees, through: :followed_users
    has_many :people_who_follow_me, class_name: 'Friendship', foreign_key: :friendee_id
    has_many :frienders, through: :people_who_follow_me
    has_secure_password
    validates :username, :email, uniqueness: { case_sensitive: false }
        
def not_my_friend
    # one array of all users
    all_users = User.all
    # one array of just my friends 
    all_of_my_freinds = self.friendees
   
    # compare arrays
    not_friends = all_users - all_of_my_freinds

    not_friends.select {|user| user != self}
end 


end

class Friendship < ActiveRecord::Base
    belongs_to :friender, class_name: 'User'
    belongs_to :friendee, class_name: 'User'  
    validates_uniqueness_of   :friender_id, scope: :friendee_id
end
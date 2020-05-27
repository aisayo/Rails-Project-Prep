class Review < ApplicationRecord
    #join table
    belongs_to :book 
    belongs_to :user 


    validates :content, presence: true
end

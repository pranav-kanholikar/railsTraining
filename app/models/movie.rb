class Movie < ApplicationRecord
    has_many :comments 
    has_one :screen 
    validates :name, presence: true
end

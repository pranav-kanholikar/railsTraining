class Movie < ApplicationRecord
    has_many :comments 
    validates :name, presence: true

    validates_presence_of :name
end

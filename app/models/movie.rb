class Movie < ApplicationRecord

   has_secure_password

    has_many :comments 
    FORBIDDEN_MOVIES = ['cow boys', 'singham', 'world war Z']
    validates :name, uniqueness: true, presence: true
    validates :description, length: { maximum: 10,
    too_long: "%{count} characters is the maximum allowed" }

    validates_presence_of :name


validate :movie_is_allowed

def movie_is_allowed
    if FORBIDDEN_MOVIES.include?(name)
        errors.add(:movie, "has been restricted from used")
    end
end

    
end

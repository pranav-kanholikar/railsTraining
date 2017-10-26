class Comment < ApplicationRecord
    belongs_to :movie , dependent: :destroy
end

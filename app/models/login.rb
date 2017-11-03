class Login < ApplicationRecord
    validates :uname, :email, :email_confirmation, :password, :confirm_password, presence: true
    # validates :lname
    validates :email, uniqueness: true
    validates :confirm_password, :email_confirmation, confirmation: true
end

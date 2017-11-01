class CreateLogins < ActiveRecord::Migration[5.1]
  def change
    create_table :logins do |t|
      t.string :uname
      t.string :lname
      t.string :email
      t.string :email_confirmation
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end

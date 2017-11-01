class AddColumnToMovie < ActiveRecord::Migration[5.1]
  def change
    add_column :movies, :password_digest, :string
  end
end

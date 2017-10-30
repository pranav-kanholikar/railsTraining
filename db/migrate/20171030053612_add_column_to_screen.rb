class AddColumnToScreen < ActiveRecord::Migration[5.1]
  def change
    add_column :screens, :movie_id, :integer
  end
end

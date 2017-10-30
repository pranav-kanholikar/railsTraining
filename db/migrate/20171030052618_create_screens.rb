class CreateScreens < ActiveRecord::Migration[5.1]
  def change
    create_table :screens do |t|
      t.integer :height
      t.integer :width
      t.integer :capacity

      t.timestamps
    end
  end
end

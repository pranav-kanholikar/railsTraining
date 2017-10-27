class CreateCinimaxes < ActiveRecord::Migration[5.1]
  def change
    create_table :cinimaxes do |t|
      t.string :name
      t.string :area
      t.text :street

      t.timestamps
    end
  end
end

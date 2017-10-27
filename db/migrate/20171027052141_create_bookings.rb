class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :f_name, :null=> false
      t.string :l_name
      t.date :date
      t.time :time
      t.integer :no_of_seats, :limit=> 5

      t.timestamps
    end
  end
end

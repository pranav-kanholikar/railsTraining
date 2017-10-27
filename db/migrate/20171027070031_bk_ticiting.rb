class BkTiciting < ActiveRecord::Migration[5.1]
  def change
    rename_table :bookings, :booked
  end

end

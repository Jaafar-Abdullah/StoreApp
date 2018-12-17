class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :product_id
      t.integer :renter_id
      t.integer :rent_id
      t.date :start_id
      t.date :end_date
      t.float :total_price

      t.timestamps
    end
  end
end

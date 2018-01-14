class CreateBookingRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :adults
      t.integer :children
      t.date :start_date
      t.date :end_date
      t.text :message

      t.timestamps
    end
  end
end

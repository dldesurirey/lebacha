class RemoveAdultsFromBookingRequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :booking_requests, :adults, :integer
  end
end

class RemoveChildrenFromBookingRequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :booking_requests, :children, :integer
  end
end

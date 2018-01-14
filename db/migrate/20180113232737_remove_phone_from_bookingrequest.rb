class RemovePhoneFromBookingrequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :booking_requests, :phone, :string
  end
end

class RemoveNameFromBookingrequest < ActiveRecord::Migration[5.1]
  def change
    remove_column :booking_requests, :name, :string
  end
end

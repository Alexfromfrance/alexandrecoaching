class RemoveAdressFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :adress
  end
end

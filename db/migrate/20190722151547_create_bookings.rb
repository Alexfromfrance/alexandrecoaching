class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :starttime
      t.datetime :endtime
      t.string :adress
      t.references :user, foreign_key: true
      t.references :trainer, foreign_key: true

      t.timestamps
    end
  end
end

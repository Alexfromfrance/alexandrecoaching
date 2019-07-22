class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :firstname
      t.string :lastname
      t.integer :price
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end

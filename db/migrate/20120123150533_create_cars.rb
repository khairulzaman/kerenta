class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :registration_number
      t.decimal :hourly_rate

      t.timestamps
    end
  end
end

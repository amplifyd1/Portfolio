class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :pick_up
      t.string :drop_off
      t.references :puppy, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

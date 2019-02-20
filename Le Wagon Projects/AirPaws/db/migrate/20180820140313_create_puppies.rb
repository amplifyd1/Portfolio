class CreatePuppies < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :location
      t.string :price
      t.text :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

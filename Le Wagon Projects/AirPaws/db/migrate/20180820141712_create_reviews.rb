class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true, index: true
      t.references :reviewable, polymorphic: true, index: true
      t.references :booking, foreign_key: true, index: true
      t.text :body
      t.integer :cuteness_rating

      t.timestamps
    end
  end
end

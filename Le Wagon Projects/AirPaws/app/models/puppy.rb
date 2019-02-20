class Puppy < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :bookings, dependent: :destroy
  has_many :bookers, through: :bookings, source: :user
  has_many :reviews, as: :reviewable, dependent: :destroy

  validates :name, presence: :true
  validates :breed, presence: :true
  validates :age, presence: :true, numericality: { less_than: 25 }
  validates :location, presence: :true
  validates :price, presence: :true
   include PgSearch
  pg_search_scope :search_by_location,
    against: [ :location],
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_by_breed,
    against: [ :breed],
    using: {
      tsearch: { prefix: true }
    }

mount_uploader :photo, PhotoUploader

end

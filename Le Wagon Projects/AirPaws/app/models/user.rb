class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_puppies, class_name: 'Puppy', foreign_key: 'user_id', dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_puppies, through: :bookings, source: :puppy, dependent: :destroy
  has_many :reviews, as: :reviewable, dependent: :destroy
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  mount_uploader :photo, PhotoUploader


  def given_reviews
    given_reviews = []
    Review.all.each do |review|
      if review.user == self
        given_reviews << review
      end
    end
    return given_reviews
  end
end

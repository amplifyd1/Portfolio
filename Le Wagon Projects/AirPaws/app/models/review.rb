class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: 'user_id'
  belongs_to :booking
  belongs_to :reviewable, polymorphic: true

  validates :body, presence: :true
  validates :cuteness_rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
end

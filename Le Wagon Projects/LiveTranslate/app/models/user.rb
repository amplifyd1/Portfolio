class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :documents
  has_many :sections
  has_many :student_lessons
  has_many :attended_lessons, through: :student_lessons, source: :lesson
  has_many :taught_lessons, class_name: 'Lesson', foreign_key: 'user_id'
  has_many :orders

  def name
    "#{first_name} #{last_name}"
  end
end

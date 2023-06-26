class User < ApplicationRecord
  has_many :comments
  has_one :image, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :image

  validates :image, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end

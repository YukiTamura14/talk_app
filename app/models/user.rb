class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :favorite_happy_talks, through: :fovorite, source: :happy_talk,  dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :happy_talks, dependent: :destroy
end

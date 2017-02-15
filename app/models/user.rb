class User < ActiveRecord::Base
  has_many :contacts, dependent: :destroy
  before_save { self.email = email.downcase }
  
  has_many :friendships
  has_many :friends, through: :friendships
  
  validates :username, presence: true, 
  uniqueness: {case_sensitive: false}, 
  length: {minimum: 5, maximum: 25}
  
  validates :email, presence: true, length: { maximum: 105 },
  uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password
end
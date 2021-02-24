class User < ApplicationRecord
  # validates :name, presence: true, length: { maximum: 15 }
                   
  # validates :email, presence: true, 
  # format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  
  
  # VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[!-~]+\z/i
  # validates :password,presence: true,
  # length: {minimum:8,maximum:32},
  # format: { with: VALID_PASSWORD_REGEX }
  validates :email, presence: true, format: { with: /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/ }
  
  PW_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i
  validates :password, presence: true, format: { with: PW_REGEX }
  
  has_secure_password
  
  has_many :topics
end


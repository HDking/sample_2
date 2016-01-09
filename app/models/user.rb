class User < ActiveRecord::Base
  #CompanyName_Date_Game?
  before_save { self.name = name.downcase }
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
  
  #password
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
end

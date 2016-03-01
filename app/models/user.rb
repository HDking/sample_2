class User < ActiveRecord::Base
  #CompanyName_Date_Game?
  before_save { self.name = name.downcase }
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
  
  #password
  has_secure_password
  validates :password, presence: true, length: { minimum: 4 }
  
  # Returns the hash digest of the given string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end

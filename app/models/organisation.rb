class Organisation < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  validates :name, presence: true , length: { maximum: 140 },  uniqueness: true
  validates :address, presence: true , length: { maximum: 140 }
  validates :zip, presence: true 
  validates :city, presence: true, length: { maximum: 140 } 
  validates :phone, presence: true, length: { maximum: 140 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false } 
                    
  validates :website, length: { maximum: 255 } 
  validates :description, length: { maximum: 600 }
  
  validates :password, presence: true, length: { minimum: 8 } 
  validates :password_confirmation, presence: true, length: { minimum: 8 }       
  
end

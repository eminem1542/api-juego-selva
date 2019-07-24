class User < ApplicationRecord

	#relations model
	has_many :perfiles
	
  #Validations
  validates_presence_of :name, :email, :password_digest
  
validates :email, uniqueness: { scope: :email,
    message: "el correo ya ha sido registrado" }


  #encrypt password
  has_secure_password



end
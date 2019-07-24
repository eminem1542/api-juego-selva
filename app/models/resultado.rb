class Resultado < ApplicationRecord
	has_many :juegos
	belongs_to :perfile

	

end

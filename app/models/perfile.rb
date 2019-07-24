class Perfile < ApplicationRecord
	has_many :resultados
	has_many :tikets
	belongs_to :user
	
	
end

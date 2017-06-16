class Pelicula < ApplicationRecord
	has_many :comentarios, dependent: :destroy
	validates :name, :url, :director, :year, presence:true
end

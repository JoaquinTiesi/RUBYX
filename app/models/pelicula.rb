class Pelicula < ApplicationRecord
  belongs_to :genero
  has_many:pelicula_personajes
  has_many:personajes, through: :pelicula_personajes
end

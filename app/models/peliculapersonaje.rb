class Peliculapersonaje < ApplicationRecord
  belongs_to :personaje
  belongs_to :pelicula
end

class CreatePeliculapersonajes < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculapersonajes do |t|
      t.references :personaje, null: false, foreign_key: true
      t.references :pelicula, null: false, foreign_key: true

      t.timestamps
    end
  end
end

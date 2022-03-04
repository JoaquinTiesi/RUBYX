class CreatePeliculas < ActiveRecord::Migration[7.0]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.date :fecha_creacion
      t.integer :calificacion
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
  end
end

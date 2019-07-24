class CreateResultados < ActiveRecord::Migration[5.1]
  def change
    create_table :resultados do |t|
      t.integer :user_id
      t.integer :perfile_id
      t.string :nombre_usuario
      t.string :nombre_nivel
      t.string :ejercicio
      t.string :aciertos
      t.string :fallos
      t.string :tiempo
      t.string :fecha

      t.timestamps
    end
  end
end

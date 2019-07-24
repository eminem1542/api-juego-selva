class CreateJuegos < ActiveRecord::Migration[5.1]
  def change
    create_table :juegos do |t|
      t.integer :user_id
      t.integer :perfile_id
      t.integer :resultado_id
      t.string :nombre_usuario
      t.string :ejercicioA
      t.string :ejercicioB
      t.string :ejercicioC
      t.string :ejercicioD
      t.string :ejercicioE

      t.timestamps
    end
  end
end

class CreateTikets < ActiveRecord::Migration[5.1]
  def change
    create_table :tikets do |t|
      t.integer :user_id
      t.integer :perfile_id
      t.string :nombre_usuario
      t.string :email
      t.string :ejercicio_ecena
      t.string :mensaje_error

      t.timestamps
    end
  end
end

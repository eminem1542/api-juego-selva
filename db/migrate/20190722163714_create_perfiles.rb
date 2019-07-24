class CreatePerfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :perfiles do |t|
      t.integer :user_id
      t.string :nombre_usuario
      t.string :edad

      t.timestamps
    end
  end
end

class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :primapellido
      t.string :secapellido
      t.string :clave
      t.string :email
      t.date :fecha_nac
      t.string :primnombre
      t.string :secnombre
      t.string :num_cedula

      t.timestamps
    end
  end
end

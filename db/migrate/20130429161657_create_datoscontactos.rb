class CreateDatoscontactos < ActiveRecord::Migration
  def change
    create_table :datoscontactos do |t|
      t.string :apellido
      t.string :direccion
      t.string :email
      t.string :movil
      t.string :nombre
      t.string :telefono

      t.timestamps
    end
  end
end

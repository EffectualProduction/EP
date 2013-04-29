class CreateSolicitudes < ActiveRecord::Migration
  def change
    create_table :solicitudes do |t|
      t.integer :cantidad
      t.integer :cliente_id
      t.integer :dias_faltantes
      t.date :fecha_aprobacion
      t.date :fecha_entrega_cliente
      t.date :fecha_solicitud
      t.integer :instructor_id
      t.string :producto
      t.string :resolucion
      t.integer :saldo
      t.integer :total
      t.integer :unidades_entregadas

      t.timestamps
    end
  end
end

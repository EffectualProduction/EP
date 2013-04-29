class CreateRegistrocompras < ActiveRecord::Migration
  def change
    create_table :registrocompras do |t|
      t.string :descripcion_producto
      t.integer :valor_total
      t.integer :valor_unidad

      t.timestamps
    end
  end
end

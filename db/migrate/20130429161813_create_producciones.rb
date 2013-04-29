class CreateProducciones < ActiveRecord::Migration
  def change
    create_table :producciones do |t|
      t.date :fecha_envio
      t.date :fecha_llegada

      t.timestamps
    end
  end
end

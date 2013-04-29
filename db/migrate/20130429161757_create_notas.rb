class CreateNotas < ActiveRecord::Migration
  def change
    create_table :notas do |t|
      t.string :items
      t.string :num_documento_recibe
      t.integer :unidad
      t.string :tipo

      t.timestamps
    end
  end
end

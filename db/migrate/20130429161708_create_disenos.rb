class CreateDisenos < ActiveRecord::Migration
  def change
    create_table :disenos do |t|
      t.string :color
      t.string :corte
      t.string :talla

      t.timestamps
    end
  end
end

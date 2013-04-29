class Registrocompra < ActiveRecord::Base
  attr_accessible :descripcion_producto, :valor_total, :valor_unidad
end

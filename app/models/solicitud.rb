class Solicitud < ActiveRecord::Base
  attr_accessible :cantidad, :cliente_id, :dias_faltantes, :fecha_aprobacion, :fecha_entrega_cliente, :fecha_solicitud, :instructor_id, :producto, :resolucion, :saldo, :total, :unidades_entregadas
end

class Datoscontacto < ActiveRecord::Base
  attr_accessible :apellido, :direccion, :email, :movil, :nombre, :telefono
end

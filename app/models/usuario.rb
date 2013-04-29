class Usuario < ActiveRecord::Base
  attr_accessible :clave, :email, :fecha_nac, :num_cedula, :primapellido, :primnombre, :secapellido, :secnombre
end

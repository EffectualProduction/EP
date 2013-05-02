class Usuario < ActiveRecord::Base
	 def self.search(search) 	
		where("primnombre like '%#{search}%'" )
  end
  attr_accessible :clave, :email, :fecha_nac, :num_cedula, :primapellido, :primnombre, :secapellido, :secnombre
end



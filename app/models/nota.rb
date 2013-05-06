class Nota < ActiveRecord::Base
	 def self.search(search) 	
		where("items like '%#{search}%'" )
  end
  attr_accessible :items, :num_documento_recibe, :tipo, :unidad
end

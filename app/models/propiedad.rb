class Propiedad < ActiveRecord::Base
  belongs_to :tipo_propiedad
	belongs_to :localidad

	validates :direccion, :presence => true
end

class Cliente < ActiveRecord::Base
  belongs_to :localidad
  belongs_to :usuario
  belongs_to :tipo_cliente

  has_many :anuncios
end

class SitioController < ApplicationController

  def index
    @tipos_propiedades = TipoPropiedad.all
	  @destacados = Anuncio.destacados
  end

end

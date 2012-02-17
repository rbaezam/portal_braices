class AnunciosController < ApplicationController

  def index
    ubicacion = params[:ubicacion]
    tipo_anuncio = params[:tipo_anuncio]
    tipo_propiedad = params[:tipo_propiedad]
    precio_desde = params[:precio_desde]
    precio_hasta = params[:precio_hasta]
	  @anuncios = Anuncio.buscar(ubicacion, tipo_anuncio, tipo_propiedad, precio_desde, precio_hasta)
  end

  def show
  	@anuncio = Anuncio.find(params[:id])
    @anuncio.veces_visto = @anuncio.veces_visto + 1
    @anuncio.save
  end

end

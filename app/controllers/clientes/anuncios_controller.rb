class Clientes::AnunciosController < ApplicationController
  before_filter :authenticate_usuario!
  before_filter :llenar_catalogos, :only => [:new, :create, :edit, :update]

  def index
    @anuncios = Anuncio.all
  end

  def show
    @anuncio = Anuncio.find(params[:id])
  end

  def new
    @anuncio = Anuncio.new
    3.times {@anuncio.fotos.build}
  end

  def create
    @anuncio = Anuncio.new(params[:anuncio])

    if @anuncio.save then
      redirect_to :action => :index
    else
      render :action => :new
    end
  end

  def edit
    @anuncio = Anuncio.find(params[:id])
    3.times {@anuncio.fotos.build}
  end

  def update
    @anuncio = Anuncio.find(params[:id])
    if @anuncio.update_attributes(params[:anuncio])
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end

  def destroy
    @anuncio = Anuncio.find(params[:id])
    @anuncio.destroy
    redirect_to :action => :index
  end

  private
  def llenar_catalogos
    @tipos_propiedades = TipoPropiedad.all
    @localidades = Localidad.all        
  end

end

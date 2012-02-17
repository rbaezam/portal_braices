#encoding:utf-8
class Anuncio < ActiveRecord::Base
	scope :destacados, limit(5).order('id DESC')

  belongs_to :tipo_propiedad
  belongs_to :localidad
  belongs_to :moneda
  belongs_to :tipo_anuncio
  belongs_to :cliente

  has_many :fotos, :dependent => :destroy

  accepts_nested_attributes_for :fotos, :allow_destroy => true

	validates :titulo, :presence => true

  def self.buscar(ubicacion, tipo_anuncio, tipo_propiedad, precio_desde, precio_hasta)

    consulta = ""

    if not ubicacion.blank?
      ubicacion = ubicacion.downcase
      consulta << "lower(localidades.nombre) like '%" << ubicacion << "%' "
      consulta << "or lower(estados.nombre) like '%" << ubicacion << "%' "
      consulta << "or codigo_postal like '%" << ubicacion << "%' "
      consulta << "or lower(direccion) like '%" << ubicacion << "%' "
    end

    #Condición de precios
    if not precio_desde.blank?
      if not consulta.blank?
        consulta << "and "
      end
      consulta << "precio_venta >= " << precio_desde
    end
    
    if not precio_hasta.blank?
      if not consulta.blank?
        consulta << "and "
      end
      consulta << "precio_venta <= " << precio_hasta
    end
    #Fin de condición de precios

    #Condición de tipos de anuncios
    if not tipo_anuncio.blank?
      if not consulta.blank?
        consulta << "and "
      end
      consulta << "tipos_anuncios.nombre = '" << tipo_anuncio << "'"
    end
    #Fin de condición de tipos de anuncios

    #Condición de tipos de propiedades
    if not tipo_propiedad.blank?
      if not consulta.blank?
        consulta << "and "
      end
      consulta << "tipos_propiedades.id = " << tipo_propiedad
    end
    #Fin de condición de tipos de propiedades

    return Anuncio.joins(:tipo_anuncio,:tipo_propiedad, :localidad => :estado).where(consulta)
  end

  private
  before_create do |anuncio|
    anuncio.slug = ("#{anuncio.id} #{anuncio.titulo}").parameterize

    anuncio.fecha_publicacion = Date.current
    anuncio.fecha_vencimiento = Date.current + 30.days

    anuncio.veces_visto = 0
    anuncio.terreno_m2 = anuncio.metros_frente * anuncio.metros_fondo

    anuncio.activo = true
  end

end

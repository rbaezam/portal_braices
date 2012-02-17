# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
ActiveSupport::Inflector.inflections do |inflect|
	inflect.irregular 'anuncio_foto', 'anuncio_fotos'
	inflect.irregular 'localidad', 'localidades'
	inflect.irregular 'pais', 'paises'
	inflect.irregular 'propiedad', 'propiedades'
	inflect.irregular 'tipo_anuncio', 'tipos_anuncios'
	inflect.irregular 'tipo_cliente', 'tipos_clientes'
	inflect.irregular 'tipo_propiedad', 'tipos_propiedades'
end
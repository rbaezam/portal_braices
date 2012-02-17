module AnunciosHelper
	include ActionView::Helpers

	def dias_publicado(anuncio)
		tiempo = ((Time.now - anuncio.fecha_publicacion.to_time)/1.day-0.5).to_i
		html = ''
		html << "Publicado hace #{tiempo} dias"
		return html
	end

	def precio(anuncio)
		#<%= number_to_currency @anuncio.precio_venta %>
		cadena = ''
		if anuncio.precio_venta != 0
			cadena << "Venta: " << number_to_currency(anuncio.precio_venta)
		end

		if anuncio.precio_renta != 0
			if not cadena.blank?
				cadena << ", "
			end
			cadena << "Renta: " << number_to_currency(anuncio.precio_renta)
		end
		return cadena
	end

end


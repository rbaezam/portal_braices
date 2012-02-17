class Foto < ActiveRecord::Base
  belongs_to :anuncio
  has_attached_file :foto,
  	:styles => {
  		:peque => "100x100",
  		:mediana => "200x200",
  		:grande => "600x400"
  	}
end

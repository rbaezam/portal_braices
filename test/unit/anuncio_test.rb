require 'test_helper'

class AnuncioTest < ActiveSupport::TestCase

	test "no debe guardar sin titulo" do
		anuncio = Anuncio.new
		assert !anuncio.save
	end

	test "no debe guardar sin una propiedad relacionada" do
		anuncio = Anuncio.new(:titulo => 'titulo')
		assert !anuncio.save
	end

end

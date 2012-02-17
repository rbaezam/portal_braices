#encoding:utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Moneda.delete_all
peso = Moneda.create(:nombre => 'Peso mexicano', :simbolo => 'MX')
us_dolar = Moneda.create(:nombre => 'Dolar americano', :simbolo => 'USD')

TipoAnuncio.delete_all
renta = TipoAnuncio.create(:nombre => 'Renta')
venta = TipoAnuncio.create(:nombre => 'Venta')


TipoCliente.delete_all
particular = TipoCliente.create(:nombre => 'Particular')
inmobiliaria = TipoCliente.create(:nombre => 'Inmobiliaria')

TipoPropiedad.delete_all
casa = TipoPropiedad.create(:nombre => "Casa habitación")
local = TipoPropiedad.create(:nombre => "Local comercial")
terreno = TipoPropiedad.create(:nombre => "Terreno")

Pais.delete_all
mx = Pais.create(:nombre => 'México')

Estado.delete_all
qroo = Estado.create(:nombre => 'Quintana Roo', :pais => mx)
yuc = Estado.create(:nombre => 'Yucatán', :pais => mx)
cam = Estado.create(:nombre => 'Campeche', :pais => mx)
jal = Estado.create(:nombre => 'Jalisco', :pais => mx)
nl = Estado.create(:nombre => 'Nuevo León', :pais => mx)
mex = Estado.create(:nombre => 'Estado de México', :pais => mx)
df = Estado.create(:nombre => 'Distrito Federal', :pais => mx)

Localidad.delete_all
chetumal = Localidad.create(:nombre => 'Chetumal', :estado => qroo)
cancun = Localidad.create(:nombre => 'Cancún', :estado => qroo)
merida = Localidad.create(:nombre => 'Mérida', :estado => yuc)
campeche = Localidad.create(:nombre => 'Campeche', :estado => cam)
ccarmen = Localidad.create(:nombre => 'Ciudad del Carmen', :estado => cam)
toluca = Localidad.create(:nombre => 'Toluca', :estado => mex)
df2 = Localidad.create(:nombre => 'Ciudad de México', :estado => df)
guadalajara = Localidad.create(:nombre => 'Guadalajara', :estado => jal)
monterrey = Localidad.create(:nombre => 'Monterrey', :estado => nl)

Cliente.delete_all
cliente1 = Cliente.create(:nombre => 'Alejandro Rivera', :rfc => 'rivera', 
		:direccion => 'Andara', :localidad => chetumal, :tipo_cliente => particular)

Anuncio.delete_all
Anuncio.create(
		:titulo => 'Casa para familia joven',
		:descripcion => 'Preciosa casa de una planta reconstruida, ampliada y remodelada, por dentro y por fuera, instalaciones eléctricas e hidráulicas nuevas, agua potable y de pozo, ubicada en amplia y tranquila esquina con camellón, orientada al norte-sur, situada a 2 min. de Gran Plaza, Sams Club, Chedraui Norte, etc. Cuenta con 15 m. de frente x 30 mts. de fondo, y 230 m2 de construcción. Completamente bardeada, consta de terraza frontal, recibidor, sala y comedor separados, desayunador, cocina con barra desayunadora, amplios espacios abiertos estilo minimalista, 2 recamaras, 1 baño completo con tina, 1 medio baño, y cubo de escaleras a segundo piso terminado para posible ampliación a dos plantas. Espaciosa area de lavado y bodega y garage techado para 3 autos, además de terraza y amplio jardin iluminado ideal para convivencias. Se entrega equipada con 4 aires acondicionados, ventiladores, persianas de lujo, miriñaques corredizos en todas las ventanas y puerta-ventanas, closets y gabinetes en recamaras, pasillo, baños y cocina, tanque de gas estacionario, boiler electronico, hidroneumático, cisterna y tinaco, puertas de cedro, y llaves y accesorios de baño de alta calidad. Se vende por viaje a un precio mucho menor de la inversión realizada. ¡Excelente oportunidad! ¡Escuchamos ofertas!',
		:direccion => 'Heriberto Jara 234, Colonia López Mateos',
		:codigo_postal => '77000',
		:precio_venta => 1000000,
		:precio_renta => 0,
		:construccion_m2 => 100,
		:metros_frente => 8,
		:metros_fondo => 20,
		:num_cuartos => 2,
		:num_banios => 1,
		:anio_construccion => 1990,
		:tipo_propiedad => casa,
		:localidad => chetumal,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,9)
	)

Anuncio.create(
		:titulo => 'RESIDENCIA DE LUJO MERIDA CHOLUL',
		:descripcion => 'RESIDENCIA EN VENTA CHOLUL MERIDA

ACABADOS DE LUJO

PISOS PORCELANATO 60 X 60
ALUMINIOS CHAMPAGNE PULIDO
VIDRIOS TINTEX
MESETAS DE MARMOL EN BAÑOS
LAVABOS DE SOBREPONER
INODOROS ONEPIECE
LLAVES DE MONOMANDO

CALLE PRIVADA 
SERVICIOS SUBTERRANEOS

TERRENO 590MTS2
FRENTE DE 16.50 MTS x FONDO DE 36MTS
CONSTRUCCION 155MTS2

3 HABITACIONES
3.5 BAÑOS

1 RECAMARA EN PLANTA BAJA
RECAMARA PRINCIPAL CON CLOSET VESTIDOR, BAÑO Y TERRAZA
AREA DE LAVADERO

PISCINA 3 X 6 MTS
ORIENTACION SUR-NORTE
JARDIN FRONTAL INCLUIDO

PRECIO: 1,295,000

INF. andres@grupoferram.com
Cel. 999 292 3260',
		:direccion => 'Cholul',
		:codigo_postal => '76000',
		:precio_venta => 1295000,
		:precio_renta => 0,
		:construccion_m2 => 200,
		:metros_frente => 20,
		:metros_fondo => 30,
		:num_cuartos => 3,
		:num_banios => 3.5,
		:anio_construccion => 1995,
		:tipo_propiedad => casa,
		:localidad => merida,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,8)
	)

Anuncio.create(
		:titulo => 'FCO.DE MONTEJO CASA CON TERRENO Y PISCINA(3 CUARTOS)',
		:descripcion => 'LA CASA TIENE 3 CUARTOS GRANDES, SALA,COMEDOR Y COCINA, 2 BAÑOS,PISCINA DE 8 X 3.10MTS.PORCH PARA HASTA 4 AUTOS, MUROS CON PORTON AL FRENTE.EL TERRENO TIENE 17 MTS. DE FRENTE,LA CONSTRUCCION SON 228MTS.LA CASA TIENE 3 AÑOS DE ANTIGUEDAD.esta por la glorieta de las palmas,rumbo a liverpool.INFORMES TEL.(999) 9194486 CEL.9991633220',
		:direccion => 'por la glorieta de las palmas,rumbo a liverpool',
		:codigo_postal => '76000',
		:precio_venta => 1280000,
		:precio_renta => 0,
		:construccion_m2 => 180,
		:metros_frente => 12,
		:metros_fondo => 28,
		:num_cuartos => 3,
		:num_banios => 2,
		:anio_construccion => 2008,
		:tipo_propiedad => casa,
		:localidad => merida,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,1)
	)

Anuncio.create(
		:titulo => 'Ave Chapalita cerca Lopez Mateos Nueva Remodelada CBG ',
		:descripcion => 'CASA 1: $2,095,000 MXN
terreno: 100 mts cuadrados.
construccion: 170 mts cuadrados de área habitable mas estacionamiento
3 recamaras (la principal con vestidor y las demas con closet), 2.5 baños, cochera automatica 2 autos

Los acabados de las casas son de primera: 
* Pisos y muros: Marmol
* Cubierta de Cocinas: Granito
* Cubierta de muebles de bano: Marmol
* Canceleria de baños y pasamanos de escaleras: Cristales templados de 9 mm. con sus herrajes importados.
* Carpinteria: tipo de madera para interior HAYA, y madera para exterior TEKA (cero mantenimiento).
* Ventanas y ventanales: Aluminio satinado de 3 ".
* Incluyen hidroneumaticos 

Visite nuestra pagina:
Capital Brokers Guadalajara com
Asesores Financieros e Inmobiliarios
Informes:
Nextel 16 12 01 37 
Id: 72*15*27221
Telcel: 33 10 42 35 72 
BB Pin 402E055B',
		:direccion => '',
		:codigo_postal => '46000',
		:precio_venta => 2095000,
		:precio_renta => 0,
		:construccion_m2 => 170,
		:metros_frente => 10,
		:metros_fondo => 10,
		:num_cuartos => 3,
		:num_banios => 2,
		:anio_construccion => 2005,
		:tipo_propiedad => casa,
		:localidad => guadalajara,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,10,16)
	)

Anuncio.create(
		:titulo => 'Residencia Boulevard Jardín Real',
		:descripcion => 'Excelente y atractiva Residencia con espacios muy amplios e iluminados, ventanales aluminio blanco con cristal, lunas de cristal y marcos madera en baños, barandal escalera forjado, derecho a casa club, areas verdes, salón eventos y juegos infantiles. Ideal para quien busca vivir en un lugar privilegiado con vigilancia y amplitud. Oportunidad de particular. Excelente precio. Con gusto se la mostraré. Sr. Saúl Reyes 044.333.148.37.92, Particular 36.42.95.37
saulreyesa@prodigy.net.mx',
		:direccion => 'por la glorieta de las palmas,rumbo a liverpool',
		:codigo_postal => '46000',
		:precio_venta => 3190000,
		:precio_renta => 0,
		:construccion_m2 => 240,
		:metros_frente => 10,
		:metros_fondo => 29,
		:num_cuartos => 3,
		:num_banios => 2,
		:anio_construccion => 2010,
		:tipo_propiedad => casa,
		:localidad => guadalajara,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,3)
	)

Anuncio.create(
		:titulo => 'Casa Col Americana',
		:descripcion => 'hermosa casa amplia recien remodelada 4 cuartos 2 baños completos cuarto lavado patio central jardin chimenea acabados de lujo cochera 2 autos porton electrico',
		:direccion => 'Villa Gómez con Molina',
		:codigo_postal => '46500',
		:precio_venta => 3200000,
		:precio_renta => 0,
		:construccion_m2 => 300,
		:metros_frente => 19,
		:metros_fondo => 20,
		:num_cuartos => 4,
		:num_banios => 3,
		:anio_construccion => 2001,
		:tipo_propiedad => casa,
		:localidad => guadalajara,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,10)
	)

Anuncio.create(
		:titulo => 'Residencial Santa Anita / Club de Golf',
		:descripcion => '!! AUTENTICA RESIDENCIA !! . Original. En el mejor desarrollo golfístico del Occidente del país. Casa 2 plantas, TOTALMENTE REMODELADA. Amplia sala y comedor con bar y chimenea, baño de visitas. Regia cocina integral modular Italiana con equipo eléctrico de última generación, amplio desayunador con vista a la terraza y al jardín, estudiom ó biblioteca, amplísima recámara con baño y vestidor en planta baja, cuarto de servicio con baño, lavandería, patio de servicio, bodeguita, bóveda de seguridad. Cochera cubierta para 4 autos con portero eléctrico sin visibilidad. En planta alta, 3 recámaras con amplios vestidores y finos bañoscon cubiertas de mármol, canceles de cristal templado y lavabos tipo tazón. Estar de TV opcional a 5ta. recámara con baño. Finos acabados de profesionales en decoración para contar con elegantes cortinas, bellas lámparas, grandes losetas de piso 60 x 60 y fina carpintería de madera en libreros, puertas de comunicación, muebles de baños, closets y vestidores con cajoneras y entrepañería. Su equipamiento es FULL, con sistema de riego, bombeo, equipo hidroneumático, boyler de gas ó equipo de calefacción solar, sistema de seguridad en sus ingresos, sauna, etc. Rodeada de hermosos jardínes en su frente, fondo y costados, además frente al campo de golf. El Fraccionamiento cuenta con ingreso controlado, casa club con canchas de tenis, fut bol, albercas, gym, spa y restaurant bar. Permítanos mostrársela sin compromiso. CON CITA .',
		:direccion => 'Tlajomulco de Zúñiga',
		:codigo_postal => '46200',
		:precio_venta => 13900000,
		:precio_renta => 0,
		:construccion_m2 => 560,
		:metros_frente => 30,
		:metros_fondo => 40,
		:num_cuartos => 6,
		:num_banios => 4,
		:anio_construccion => 2008,
		:tipo_propiedad => casa,
		:localidad => guadalajara,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,11,12)
	)

Anuncio.create(
		:titulo => 'Casa sola en venta, Calle V239 Privado, Col. Cumbres Elite Sector Villas, Monterrey, Nuevo Le&oacute;n',
		:descripcion => 'Residencia nueva con acabados de lujo en el poniente, ubicada en calle muy amplia, en cerrada. Cuenta con: Pisos de porcelanato, frente de cantera, balc&oacute;n. doble cochera techada, cocina-comedor grande, area social, lavander&iacute;a, closet vestidor en larec&aacute;mara principal. Escalera cn acabado de madera, estancia grande, espacio para oficina, sanitarios moderno doble bot&oacute;n, domo para iluminaci&oacute;n en escalera, iluminaci&oacute;n indirecta en plafones. Ubicado cerca de centros comerciales, escuelas, prepa Tec y anuncio provisto por Mercadoi.com',
		:codigo_postal => '55000',
		:direccion => '',
		:precio_venta => 2225000,
		:precio_renta => 0,
		:construccion_m2 => 169,
		:metros_frente => 12,
		:metros_fondo => 20,
		:num_cuartos => 3,
		:num_banios => 2,
		:anio_construccion => 2005,
		:tipo_propiedad => casa,
		:localidad => monterrey,
		:moneda => peso,
		:tipo_anuncio => venta,
		:cliente => cliente1,
		:fecha_publicacion => Date.new(2011,9,10)
	)

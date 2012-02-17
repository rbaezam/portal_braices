# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111125185057) do

  create_table "anuncios", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "slug"
    t.date     "fecha_publicacion"
    t.date     "fecha_vencimiento"
    t.integer  "veces_visto"
    t.boolean  "activo"
    t.string   "direccion"
    t.string   "codigo_postal"
    t.float    "precio_venta"
    t.float    "precio_renta"
    t.float    "construccion_m2"
    t.float    "terreno_m2"
    t.float    "metros_frente"
    t.float    "metros_fondo"
    t.integer  "num_cuartos"
    t.float    "num_banios"
    t.integer  "anio_construccion"
    t.string   "caracteristicas"
    t.integer  "tipo_propiedad_id"
    t.integer  "localidad_id"
    t.integer  "moneda_id"
    t.integer  "tipo_anuncio_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "anuncios", ["cliente_id"], :name => "index_anuncios_on_cliente_id"
  add_index "anuncios", ["localidad_id"], :name => "index_anuncios_on_localidad_id"
  add_index "anuncios", ["moneda_id"], :name => "index_anuncios_on_moneda_id"
  add_index "anuncios", ["tipo_anuncio_id"], :name => "index_anuncios_on_tipo_anuncio_id"
  add_index "anuncios", ["tipo_propiedad_id"], :name => "index_anuncios_on_tipo_propiedad_id"

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "rfc"
    t.string   "direccion"
    t.integer  "localidad_id"
    t.integer  "usuario_id"
    t.integer  "tipo_cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["localidad_id"], :name => "index_clientes_on_localidad_id"
  add_index "clientes", ["tipo_cliente_id"], :name => "index_clientes_on_tipo_cliente_id"
  add_index "clientes", ["usuario_id"], :name => "index_clientes_on_usuario_id"

  create_table "estados", :force => true do |t|
    t.string   "nombre"
    t.integer  "pais_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estados", ["pais_id"], :name => "index_estados_on_pais_id"

  create_table "fotos", :force => true do |t|
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "anuncio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fotos", ["anuncio_id"], :name => "index_fotos_on_anuncio_id"

  create_table "localidades", :force => true do |t|
    t.string   "nombre"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "localidades", ["estado_id"], :name => "index_localidades_on_estado_id"

  create_table "monedas", :force => true do |t|
    t.string   "nombre"
    t.string   "simbolo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "propiedades", :force => true do |t|
    t.string   "direccion"
    t.float    "precio"
    t.float    "construccion_m2"
    t.float    "terreno_m2"
    t.integer  "num_cuartos"
    t.integer  "num_banios"
    t.integer  "anio_construccion"
    t.string   "caracteristicas"
    t.integer  "tipo_propiedad_id"
    t.integer  "localidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "propiedades", ["tipo_propiedad_id"], :name => "index_propiedades_on_tipo_propiedad_id"

  create_table "tipos_anuncios", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_clientes", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos_propiedades", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end

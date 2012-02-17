class CreateAnuncios < ActiveRecord::Migration
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.text :descripcion
      t.string :slug
      t.date :fecha_publicacion
      t.date :fecha_vencimiento
      t.integer :veces_visto
      t.boolean :activo
      t.string :direccion
      t.string :codigo_postal
      t.float :precio_venta
      t.float :precio_renta
      t.float :construccion_m2
      t.float :terreno_m2
      t.float :metros_frente
      t.float :metros_fondo
      t.integer :num_cuartos
      t.float :num_banios
      t.integer :anio_construccion
      t.string :caracteristicas
      t.references :tipo_propiedad
      t.references :localidad
      t.references :moneda
      t.references :tipo_anuncio
      t.references :cliente

      t.timestamps
    end
    add_index :anuncios, :tipo_propiedad_id
    add_index :anuncios, :localidad_id
    add_index :anuncios, :moneda_id
    add_index :anuncios, :tipo_anuncio_id
    add_index :anuncios, :cliente_id
  end
end

class CreatePropiedades < ActiveRecord::Migration
  def change
    create_table :propiedades do |t|
      t.string :direccion
      t.float :precio
      t.float :construccion_m2
      t.float :terreno_m2
      t.integer :num_cuartos
      t.integer :num_banios
      t.integer :anio_construccion
      t.string :caracteristicas
      t.references :tipo_propiedad
      t.references :localidad

      t.timestamps
    end
    add_index :propiedades, :tipo_propiedad_id
  end
end

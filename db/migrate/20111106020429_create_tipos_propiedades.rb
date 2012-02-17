class CreateTiposPropiedades < ActiveRecord::Migration
  def change
    create_table :tipos_propiedades do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

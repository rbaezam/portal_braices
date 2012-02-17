class CreateTiposAnuncios < ActiveRecord::Migration
  def change
    create_table :tipos_anuncios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

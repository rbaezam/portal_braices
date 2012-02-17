class CreateTiposClientes < ActiveRecord::Migration
  def change
    create_table :tipos_clientes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

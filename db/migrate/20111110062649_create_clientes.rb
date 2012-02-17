class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.references :localidad
      t.references :usuario
      t.references :tipo_cliente

      t.timestamps
    end
    add_index :clientes, :localidad_id
    add_index :clientes, :usuario_id
    add_index :clientes, :tipo_cliente_id
  end
end

class CreateLocalidades < ActiveRecord::Migration
  def change
    create_table :localidades do |t|
      t.string :nombre
      t.references :estado

      t.timestamps
    end
    add_index :localidades, :estado_id
  end
end

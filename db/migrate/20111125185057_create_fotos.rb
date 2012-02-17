class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :foto_file_name
      t.string :foto_content_type
      t.integer :foto_file_size
      t.datetime :foto_updated_at
      t.references :anuncio

      t.timestamps
    end
    add_index :fotos, :anuncio_id
  end
end

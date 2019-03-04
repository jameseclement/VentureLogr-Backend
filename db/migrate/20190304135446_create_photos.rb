class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.string :url
      t.string :entry_id

      t.timestamps
    end
  end
end

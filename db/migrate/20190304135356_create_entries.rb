class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :story
      t.date :date
      t.integer :trip_id

      t.timestamps
    end
  end
end

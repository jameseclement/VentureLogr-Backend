class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :date
      t.string :location
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end

class CreatePizaRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :piza_restaurants do |t|
      t.integer :id
      t.references :piza, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end

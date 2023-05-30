class CreatePizas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizas do |t|
      t.integer :id
      t.string :name
      t.string :ingredients
      
      t.timestamps
    end
  end
end

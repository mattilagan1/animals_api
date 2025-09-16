class CreateAnimals < ActiveRecord::Migration[8.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end

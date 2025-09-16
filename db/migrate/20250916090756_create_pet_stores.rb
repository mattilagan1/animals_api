class CreatePetStores < ActiveRecord::Migration[8.0]
  def change
    create_table :pet_stores do |t|
      t.string :breed
      t.integer :age
      t.string :name

      t.timestamps
    end
  end
end

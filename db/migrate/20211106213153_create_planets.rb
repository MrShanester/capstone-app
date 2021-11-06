class CreatePlanets < ActiveRecord::Migration[6.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :diameter
      t.integer :mass
      t.integer :orbital_distance
      t.string :color

      t.timestamps
    end
  end
end

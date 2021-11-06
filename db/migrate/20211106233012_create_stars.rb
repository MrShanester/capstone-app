class CreateStars < ActiveRecord::Migration[6.1]
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :mass

      t.timestamps
    end
  end
end

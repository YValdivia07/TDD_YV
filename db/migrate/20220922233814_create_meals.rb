class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

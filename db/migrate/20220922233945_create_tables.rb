class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.integer :number, null: false

      t.timestamps
    end
    add_index :tables, :number, unique: true
  end
end

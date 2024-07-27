class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end

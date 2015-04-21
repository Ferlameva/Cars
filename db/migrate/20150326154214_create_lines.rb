class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.integer :price
      t.integer :model_id

      t.timestamps null: false
    end
  end
end

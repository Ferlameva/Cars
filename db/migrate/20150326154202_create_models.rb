class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.integer :model_year
      t.integer :brand_id

      t.timestamps null: false
    end
  end
end

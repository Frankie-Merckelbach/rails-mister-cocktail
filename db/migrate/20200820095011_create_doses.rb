class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.string :cocktail_name
      t.string :ingredient_name

      t.timestamps
    end
  end
end

class CreateCategoryToys < ActiveRecord::Migration[6.0]
  def change
    create_table :category_toys do |t|
      t.references :category, null: false, foreign_key: true
      t.references :toy, null: false, foreign_key: true

      t.timestamps
    end
  end
end

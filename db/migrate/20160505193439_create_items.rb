class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :url
      t.string :name
      t.float :price
      t.boolean :active
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

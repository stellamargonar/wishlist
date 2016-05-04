class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.text :title
      t.text :description

      t.timestamps null: false
    end
  end
end

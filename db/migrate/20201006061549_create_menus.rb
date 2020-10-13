class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.integer :calorie
      t.text :coment
      t.string :image_name

      t.timestamps
    end
  end
end

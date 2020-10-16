class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :menu_id

      t.timestamps
    end
    add_index :likes, [:user_id, :menu_id], unique: true
  end
end

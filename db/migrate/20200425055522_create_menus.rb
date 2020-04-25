class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.string :category
      t.date :date
      t.string :time_zone
      t.text :memo
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :menus, [:user_id, :date, :time_zone]
  end
end

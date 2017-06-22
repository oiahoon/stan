class CreateUserExts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_exts do |t|
      t.integer :user_id, null: false
      t.integer :weight, default: 0
      t.string :display_name, default: ''

      t.timestamps
    end

    add_index :user_exts, :user_id
  end
end

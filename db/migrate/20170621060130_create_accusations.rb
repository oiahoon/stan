class CreateAccusations < ActiveRecord::Migration[5.1]
  def change
    create_table :accusations do |t|
      t.text :substance, default: ''
      t.integer :organization_id, null: false
      t.integer :author_id, null: false
      t.integer :weight, default: 0

      t.timestamps
    end
  end
end

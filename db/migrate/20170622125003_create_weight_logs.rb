class CreateWeightLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :weight_logs do |t|
      t.string :entity_type, null: false
      t.integer :entity_id, null: false
      t.integer :score, default: 0, null: false
      t.integer :user_id, default: 0, null: false

      t.timestamps
    end

    add_index :weight_logs, [:entity_id, :entity_type, :user_id]
  end
end

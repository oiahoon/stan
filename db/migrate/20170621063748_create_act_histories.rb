class CreateActHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :act_histories do |t|
      t.integer :operation, default: 1, null: false
      t.integer :user_id, null: false
      t.string :action, null: false

      t.timestamps
    end
  end
end

class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :subtitle, default: ''
      t.string :address, default: ''
      t.integer :weight, default: 0
      t.integer :creator_id, default: 0, null:false

      t.timestamps
    end

    add_index :organizations, :name, unique: true
  end
end

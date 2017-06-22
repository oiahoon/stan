class CreateAccusations < ActiveRecord::Migration[5.1]
  def change
    create_table :accusations do |t|

      t.timestamps
    end
  end
end

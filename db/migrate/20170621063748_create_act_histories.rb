class CreateActHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :act_histories do |t|

      t.timestamps
    end
  end
end

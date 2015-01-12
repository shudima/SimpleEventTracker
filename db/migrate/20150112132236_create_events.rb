class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventName
      t.string :eventData

      t.timestamps null: false
    end
  end
end

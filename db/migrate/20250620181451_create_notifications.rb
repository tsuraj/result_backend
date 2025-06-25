class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.string :title, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end


class CreateResults < ActiveRecord::Migration[7.2]
  def change
    create_table :results do |t|
      t.string :title
      t.string :category
      t.date :date
      t.string :link

      t.timestamps
    end
  end
end

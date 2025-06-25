class CreateJobs < ActiveRecord::Migration[7.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :organization
      t.date :last_date
      t.string :link

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :chapter_id

      t.timestamps
    end
  end
end

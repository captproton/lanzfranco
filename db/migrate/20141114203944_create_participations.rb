class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :event_id
      t.integer :character_id
      t.string :description

      t.timestamps
    end
  end
end

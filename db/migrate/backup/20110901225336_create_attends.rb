class CreateAttends < ActiveRecord::Migration
  def self.up
    create_table :attends do |t|
      t.integer :attended_id
      t.integer :attendee_id

      t.timestamps
    end
  end

  def self.down
    drop_table :attends
  end
end

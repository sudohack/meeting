class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.string :position
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end

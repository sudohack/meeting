class FixMyShit < ActiveRecord::Migration
  def self.up
	    remove_column :meetings, :employee_id
  end

  def self.down
	    add_column :meetings, :employee_id, :integer
  end
end

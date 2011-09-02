class AddEmployeeToMeetings < ActiveRecord::Migration
  def self.up
    add_column :meetings, :employee_id, :integer
  end

  def self.down
    remove_column :meetings, :employee_id
  end
end

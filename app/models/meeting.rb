class Meeting < ActiveRecord::Base
   has_many :attends
   has_many :employees, :through => :attends

	def add_employee!(employee)
		self.attends.create!(:employee_id => employee.id)
	end

end

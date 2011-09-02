class Meeting < ActiveRecord::Base
   has_many :attends
   has_many :employees, :through => :attends
   
	def add_employee!(employee)
		self.attends.create!(:employee_id => employee.id)
	end
	
	def cost
		total_cost = 0.0
		employees.each do |employee|
			total_cost += self.length * (employee.rate / 60.0)
		end
		return '$'+total_cost.round(2).to_s
	end
end

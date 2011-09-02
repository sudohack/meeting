class Attend < ActiveRecord::Base
	belongs_to :meeting  
	belongs_to :employee     
end

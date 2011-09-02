class Employee < ActiveRecord::Base
    has_many :attends
    has_many :meetings, :through => :attends
end


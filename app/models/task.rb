class Task < ApplicationRecord
  has_many :employee_tasks
  has_many :employees, through: :employee_tasks

end

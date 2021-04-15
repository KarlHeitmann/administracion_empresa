class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :employees, class_name: "Employee", foreign_key: "boss_id"
  belongs_to :boss, class_name: "Employee", optional:true

  def search_sub_employees_level(level)
    if (level > 0)
      my_employees = self.employees
      sub_employees = self.employees.map {|employee| employee.search_sub_employees_level(level - 1)}
      return my_employees + sub_employees.flatten(1)
    else
      return self.employees
    end
  end

end

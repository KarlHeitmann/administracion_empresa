class EmployeesController < ApplicationController
  before_action :set_employee, except: [:index]
  def index
    @employees = Employee.all.order(created_at: :asc)
  end

  def sub_employees
    puts "########################"
    puts "########################"
    puts "########################"
    puts "########################"
    puts @employee.email
    @sub_employees = @employee.employees
    respond_to do |format|
      format.js
    end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end
end

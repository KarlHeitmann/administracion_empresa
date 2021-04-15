class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    @employee = Employee.new
  end
end

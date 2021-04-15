class EmployeesController < ApplicationController
  before_action :set_employee, except: [:index]
  def index
    @employees = Employee.all
    @employee = Employee.new
  end

  def show
  end

  def add_boss
    respond_to do |format|
      format.js
    end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end
end

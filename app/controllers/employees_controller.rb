class EmployeesController < ApplicationController
  before_action :set_employee, except: [:index]
  def index
    @employees = Employee.all.order(created_at: :asc)
    @employee = Employee.new
  end

  def show
  end

  def sub_employees
    @sub_employees = @employee.search_sub_employees_level params[:level].to_i
    respond_to do |format|
      format.js
    end
  end

  def add_boss
    @employee.boss_id = params[:boss_id]
    respond_to do |format|
      format.js
    end
  end

  def bosses
    @employees = Employee.where("id != ?", @employee.id).pluck(:name, :id)
    # puts @employees
    respond_to do |format|
      format.js
    end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end
end

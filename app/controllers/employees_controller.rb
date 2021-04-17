class EmployeesController < ApplicationController
  before_action :set_employee, except: [:index]
  def index
    @employees = Employee.all.order(created_at: :asc)
  end

  def sub_employees
    @sub_employees = @employee.employees
    respond_to do |format|
      format.js
    end
  end

  def show
  end

  def tasks
    @tasks = Task.all.pluck(:title, :id)
  end

  def task_create
    @task = Task.find(params[:task_id])
    puts "###########"
    puts "###########"
    puts "###########"
    puts "###########"
    puts @task
    @employee.tasks << @task
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end
end

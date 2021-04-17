class CreateEmployeeTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_tasks do |t|
      t.references :task, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddBossToEmployee < ActiveRecord::Migration[6.1]
  def change
    # Para referencias recursivas, lo importante es que en foreign_key, su hash asociado apunte a la misma tabla de employees
    add_reference :employees, :boss, foreign_key: {to_table: :employees}

  end
end

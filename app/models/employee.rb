class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Tiene que ir class_name porque es la relacion especial que no se llama a si misma
  has_many :employees, class_name: "Employee", foreign_key: "boss_id"

  # Tiene que ir class_name porque es la relacion especial que no se llama a si misma
  # Ademas, recuerde que la columna boss_id es OPCIONAL. En caso de que alguien no tenga jefe.
  belongs_to :boss, class_name: "Employee", optional:true

  has_many :employee_tasks
  has_many :tasks, through: :employee_tasks

end

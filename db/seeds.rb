# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.destroy_all

30.times do |i|
  puts i
  Employee.create!(
    name: Faker::Name.name,
    picture: Faker::Avatar.image,
    email: "employee#{i + 1}@example.com",
    password: "asdasd",
  )
end

=begin
empleados = {
  1: Employee.find_by_email "employee1@example.com"
  2: Employee.find_by_email "employee2@example.com"
}

empleados.each do |empleado|
  empleado
=end


employee_1 =  Employee.find_by_email "employee1@example.com"
employee_2 =  Employee.find_by_email "employee2@example.com"
employee_3 =  Employee.find_by_email "employee3@example.com"
employee_4 =  Employee.find_by_email "employee4@example.com"
employee_5 =  Employee.find_by_email "employee5@example.com"
employee_6 =  Employee.find_by_email "employee6@example.com"
employee_7 =  Employee.find_by_email "employee7@example.com"
employee_8 =  Employee.find_by_email "employee8@example.com"
employee_9 =  Employee.find_by_email "employee9@example.com"


employee_2.boss = employee_1
employee_3.boss = employee_1

employee_4.boss = employee_2
employee_5.boss = employee_2

employee_6.boss = employee_4
employee_7.boss = employee_4

employee_8.boss = employee_6
employee_9.boss = employee_6

employee_1.save
employee_2.save
employee_3.save
employee_4.save
employee_5.save
employee_6.save
employee_7.save
employee_8.save
employee_9.save



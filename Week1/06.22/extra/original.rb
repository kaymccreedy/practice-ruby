class Employee

  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new( first_name: "Majora", last_name: "Carter", salary: 80000, active: true )
employee2 = Employee.new( first_name: "Danilo", last_name: "Campos", salary: 70000, active: true )
employee1.print_info
employee2.print_info

class Manager < Employee

  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end

  def give_annual_raise
    @salary = 1.1 * @salary
  end

  def print_info
    super
    puts "#{first_name} #{last_name} is a manager."
  end

end



manager = Manager.new( first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2] )
manager.print_info
manager.send_report
manager.give_all_raises
pp manager
puts
puts
manager.fire_all_employees
pp manager
puts
puts
manager.give_annual_raise
pp manager
manager.print_info
puts
puts

intern = Intern.new( first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true )
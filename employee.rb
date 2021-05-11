require "byebug"

class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title

        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end
    def add_employees(employee)
        @employees << employee
    end
    def bonus(multiplier)
       
        multiplier * self.total_salaries
    end

    def total_salaries
        total = 0
      
        @employees.each do |employee|
            
            if employee.is_a?(Manager)
                total += employee.salary + employee.total_salaries 
            else
                total += employee.salary
            end
        end
        total
    end
end

#name, title, salary, boss = nil)
ned = Manager.new("Ned", "founder", 100000)
darren = Manager.new("Darren", "manager", 78000, "Ned")
david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")

ned.add_employees(darren)
darren.add_employees(shawna)
darren.add_employees(david)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
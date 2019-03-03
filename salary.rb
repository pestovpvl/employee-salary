class  Employee
    attr_reader :name
    
    def initialize(name = "Anonymous", salary = 0.0)
        @name = name
        @salary = salary
    end

    def name=(name)
        if name == ""
            raise "name Can't be blank"
        end
        @name = name
    end

    def print_name
        puts "Name: #{name}"
    end
end

class SalaryEmployee < Employee
    attr_reader :salary
    def salary=(salary)
        if salary < 0
            raise "Salary #{salary} can't be less than 0"
        end
        @salary = salary
    end
    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end
end

class HourlyEmployee < Employee
    attr_reader :hourly_wage, :hours_per_week
    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "Salary #{hourly_wage} can't be less than 0"
        end
        @hourly_wage = hourly_wage
    end

    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "Salary #{hours_per_week} can't be less than 0"
        end
        @hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_two_week = hours_per_week * hourly_wage * 2
        formatted_pay = format("$%.2f", pay_for_two_week)
        puts "Pay for two week: #{formatted_pay}"
    end
end

emloyee = SalaryEmployee.new
emloyee.name = "Pavel"
emloyee.salary = 1000
emloyee.print_pay_stub

emloyee2 = HourlyEmployee.new
emloyee2.hours_per_week = 40
emloyee2.hourly_wage = 25
emloyee2.print_pay_stub


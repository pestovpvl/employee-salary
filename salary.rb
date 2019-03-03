class  Employee
    attr_reader :name
   
    def name=(name)
        if name == ""
            raise "name Can't be blank"
        end
        @name = name
    end

    def initialize(name = "Anonymous")
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

    def initialize(name = "Anonymous", salary = 0.0)
        super(name)
        self.salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end
end

class HourlyEmployee < Employee
    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25,  30)
    end

    def self.cashier(name)
        HourlyEmployee.new(name, 19.25,  30)
    end

    def self.janitor(name)
        HourlyEmployee.new(name, 19.25,  30)
    end

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
    
    def initialize(name = "Anonymous", hourly_wage = 0, hours_per_week = 0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_two_week = hours_per_week * hourly_wage * 2
        formatted_pay = format("$%.2f", pay_for_two_week)
        puts "Pay for two week: #{formatted_pay}"
    end
end

emloyee = SalaryEmployee.new
emloyee.name = "Empl1"
emloyee.salary = 100
emloyee.print_pay_stub

emloyee2 = HourlyEmployee.janitor("Egor")
emloyee2.print_pay_stub


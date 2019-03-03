class  Employee
    attr_reader :name, :salary
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
    def salary=(salary)
        if salary < 0
            raise "Salary #{salary} can't be less than 0"
        end
        @salary = salary
    end
   def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    puts "Pay This Period: $#{pay_for_period}"
   end 
end

paha = Employee.new
paha.name = "Pavel"
paha.salary = 1000
paha.print_pay_stub

ben = Employee.new
ben.name
ben.salary
ben.print_pay_stub


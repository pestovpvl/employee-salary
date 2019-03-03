class Boat
    def initialize (name)
        @name = name
    end
end

class PowerBoat < Boat
    def initialize (name, type)
        super(name)
        @type = type
    end
    def info
        puts "Name: #{@name}"
        puts "Type: #{@type}" 
    end
end


boat = PowerBoat.new("ads", "outboard")
boat.info
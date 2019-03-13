class Candidate
 attr_accessor :name, :age, :occupation, :hobby, :birthplace
 def initialize(name, options = {age: nil, occupation: nil, hobby: nil, birthplace: "Sleepy Creek"})
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
 end
end


p Candidate.new("Carl Barnes", age: 22, occupation: "Freelancer")
class Patient
  attr_reader :name, :age
  attr_accessor :id, :room

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @room = attributes[:room]
  end
end

# Hash como último parâmetro do método (3 maneiras diferentes):

#########
# info = {name: 'Roberto', age: 22}
# patient = Patient.new(info)

##########
# patient = Patient.new({name: 'Roberto', age: 22})

##########
# patient = Patient.new(name: 'Roberto', age: 22)





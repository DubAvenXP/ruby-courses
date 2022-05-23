# Struct is a class that allows to create objects with named attributes.
class Persona < Struct.new(:name, :last_name, :age)
  # att_accessor: provides getter and setter methods
  # attr_accessor :name, :last_name, :age
  def self.suggested_names
    %w[Pepe Juan Luis Maria]
  end

  # Methods
  def complete_name
    "Complete names: #{name} #{last_name}"
  end

  def is_adult?
    age >= 18
  end
end

persona = Persona.new('Juan', 'Perez', 20)
puts persona.name
puts persona.last_name
puts persona.age
puts persona.complete_name
puts "Es mayor de edad: #{persona.is_adult?}"

Persona.suggested_names.each do |name|
  puts "suggested name: #{name}"
end

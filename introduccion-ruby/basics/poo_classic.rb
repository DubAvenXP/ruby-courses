class Persona
  def self.suggested_names
    %w[Pepe Juan Luis Maria]
  end

  def initialize(name, last_name, age)
    @name = name
    @last_name = last_name
    @age = age
  end

  # Getters
  attr_reader :name

  attr_reader :last_name, :age

  # Setters
  def name=(name)
    # @name = name
    self.name = name
  end

  def last_name=(last_name)
    # @last_name = last_name
    self.last_name = last_name
  end

  # Methods
  def complete_name
    "#{@name} #{@last_name}"
  end

  def is_adult?
    @age >= 18
  end
end

persona = Persona.new('Juan', 'Perez', 20)
puts persona.name
puts persona.last_name
puts persona.age
puts "Es mayor de edad: #{persona.is_adult?}"
puts persona.complete_name

Persona.suggested_names.each do |name|
  puts "suggested name: #{name}"
end

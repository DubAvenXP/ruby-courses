numero = 10

# Global scope
num = 4

def saludar
  # Local scope
  num = 10
  puts 'Hola!'
  puts num # 10
end

def despedirse
  puts 'Adios!'
end

saludar
puts num # 4

def saludar
    puts 'Hola!'
end

alias saludar_original saludar

def saludar
    puts 'Hola con Ruby!'
end

saludar_original
saludar

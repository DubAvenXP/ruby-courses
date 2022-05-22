saludar = proc { |nombre| puts "Hola #{nombre}" }
saludar.call 'Pepe'

class Transaction
  def exec
    puts 'Iniciando transacción'
    if block_given?
      yield # Invocamos el bloque
    end
  end
end

transaction = Transaction.new
transaction.exec { puts 'Ejecutando transacción' }

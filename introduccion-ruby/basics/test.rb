require 'byebug'

class Calculator
  def addition(a, b)
    a + b
  end

  def subtraction(a, b)
    a - b
  end

  def multiplication(a, b)
    a * b
  end

  def division(a, b)
    a / b
  end
end

calc = Calculator.new

expected_results_sums = {
  [1, 2] => 3,
  [25, 2] => 27,
  [100, 2] => 102
}

expected_results_sums.each do |args, expected_result|
  response = calc.addition(args[0], args[1])
  # byebug
  if response != expected_result
    puts 'Test failed'
    raise "Expected #{expected_result} but got #{response}"
  else
    puts 'Test passed'
  end
end

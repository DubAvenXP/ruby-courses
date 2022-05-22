require 'minitest/autorun'

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

# Do top level documentation
class TestCalculator < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_sum_positives
    result = @calc.addition(1, 3)
    assert_equal 4, result
  end

  def test_sum_negatives
    result = @calc.addition(-1, -3)
    assert_equal(-4, result)
  end

  def test_sum_negatives_and_positives
    result = @calc.addition(-1, 3)
    assert_equal 2, result
  end

  def test_sum_zero
    result = @calc.addition(0, 0)
    assert_equal 0, result
  end
end

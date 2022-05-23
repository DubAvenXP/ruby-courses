# Explicit return examples
def function_1(x)
  if x > 0
    x
  else
    0
  end
end

# Implicit retur examples
def function_2(x)
  if x > 0
    x
  else
    0
  end
end

def function_3(x)
  if x.nil?
    0
  else
    x
  end
end

def is_valid_age?(age)
  age > 18
end

puts is_valid_age?(18)

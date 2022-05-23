# function with implicit block
def function_1(x)
  x += 1
  if block_given?
    yield(x)
  else
    puts x
  end
end

# the same function, but with a explicit block
def function_2(x, &block)
  x += 1
  # unless block_given? -> if !block_given? -> if block is not nil
  unless block.nil?
    block.call(x)
  else
    puts x
  end
end

# Normal
function_1 3
# With block
function_1 3 do |result|
  puts result * 2
end

function_2(4)
function_2(4) { |result| puts result * 2 }
function_2(10) do |result|
  puts result * 2
end
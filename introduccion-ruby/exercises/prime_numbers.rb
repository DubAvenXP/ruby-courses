class Prime
  def self.get_prime_numbers
    primes = []
    random_number = rand(10) + 1
    
    puts "print #{random_number} numbers"
    
    for i in 1..random_number do
      if is_prime?(i)
        primes.push(i)
      end
    end

    #TODO:investigate recursive functions
    primes
  end

  def self.is_prime?(n)
    (2..Math.sqrt(n).to_i).each do |i|
      return false if n % i == 0
    end
    true
  end
end

puts Prime.get_prime_numbers

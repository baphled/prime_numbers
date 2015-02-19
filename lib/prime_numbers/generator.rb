class PrimeNumbers::Generator
  def self.generate(number_of_primes)
    [2].tap{ |primes| find_primes(primes, number_of_primes) }
  end

  protected

  def self.find_primes(primes, number_of_primes)
    counter = 1

    while primes.count < number_of_primes
      number = current_number(primes, counter)

      if not_prime?(number)
        counter +=1
      else
        primes << number
        counter = 1
      end
    end
  end

  def self.current_number(primes, counter)
    primes.last + counter
  end

  def self.not_prime?(number)
    (2...number).any? { |i| number % i == 0 }
  end
end

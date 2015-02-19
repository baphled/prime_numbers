class PrimeNumbers::Display
  attr_accessor :primes

  def initialize number_of_primes
    self.primes = PrimeNumbers.new(number_of_primes)
  end

  def print
    PrimeNumbers::Matrix.new(primes.primes)
  end
end

require "prime"

class PrimeNumbers
  attr_accessor :number_of_primes

  def initialize(number_of_primes=10)
    self.number_of_primes = number_of_primes
  end

  def primes
    PrimeNumbers::Generator.generate(number_of_primes)
  end
end

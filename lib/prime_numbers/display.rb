class PrimeNumbers::Display
  attr_accessor :primes

  def initialize number_of_primes
    self.primes = PrimeNumbers.new(number_of_primes)
  end

  def print
    grid = PrimeNumbers::Matrix.new(primes.primes)
    PrimeNumbers::Printer.display(grid.matrix)
  end
end

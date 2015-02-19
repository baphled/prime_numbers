require "spec_helper"

describe PrimeNumbers::Display do
  describe '#new' do
    let(:prime_numbers) { double(primes: [2, 3, 5]) }

    it 'Generates an array of prime numbers' do
      expect(PrimeNumbers).to receive(:new).with(3).and_return(prime_numbers)

      PrimeNumbers::Display.new(3)
    end
  end
end

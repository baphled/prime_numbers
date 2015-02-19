require "spec_helper"

describe PrimeNumbers::Display do
  describe '#new' do
    let(:prime_numbers) { double(primes: [2, 3, 5]) }

    it 'Generates an array of prime numbers' do
      expect(PrimeNumbers).to receive(:new).with(3).and_return(prime_numbers)

      PrimeNumbers::Display.new(3)
    end
  end

  describe '#print' do
    subject { described_class.new(3) }

    let(:prime_numbers) { double(primes: [2, 3, 5]) }

    it 'creates a matrix array' do
      expect(PrimeNumbers::Matrix).to receive(:new).with(prime_numbers.primes).and_return PrimeNumbers::Matrix.new(prime_numbers.primes)

      subject.print
    end

    it 'prints the grid' do
      expect(PrimeNumbers::Printer).to receive(:display)

      subject.print
    end
  end
end

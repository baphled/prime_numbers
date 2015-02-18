require "spec_helper"

describe PrimeNumbers do
  describe "#primes" do
    subject { described_class.new(10) }

    it 'stores the number of prime numbers' do
      expect(subject.number_of_primes).to eql(10)
    end

    it "returns a list of prime numbers" do
      prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
      expect(subject.primes).to eql(prime_numbers)
    end
  end
end

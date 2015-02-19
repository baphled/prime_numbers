require "spec_helper"

describe PrimeNumbers::Generator do
  context 'with 3' do
    it 'returns the first 3 primes' do
      expect(described_class.generate(3)).to contain_exactly(2, 3, 5)
    end
  end
end

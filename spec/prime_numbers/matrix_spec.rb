require "spec_helper"

RSpec.describe PrimeNumbers::Matrix do
  let(:primes) { [2, 3, 5] }

  subject { described_class.new(primes) }
  
  let(:matrix) do
    [
      [nil, 2, 3, 5],
      [2, 4, 6, 10],
      [3, 6, 9, 15],
      [5, 10, 15, 25]
    ]
  end

  it "stores a matrix of primes numbers" do
    expect(subject.matrix).to eql(matrix)
  end

  describe "#new" do
    it 'takes a array of primes numbers'
  end

  describe "generate" do
    it "generates a grid based on the number of primes numbers requested"
  end
end

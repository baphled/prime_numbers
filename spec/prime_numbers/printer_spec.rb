require "spec_helper"

describe PrimeNumbers::Printer do
  let(:matrix) do
<<-table
     2  3  5
  2  4  6 10
table
  end

  subject { described_class.display([[nil, 2, 3, 5], [2, 4, 6, 10]]) }

  describe ".display" do
    it 'renders a grid' do
      expect { subject }.to output(matrix).to_stdout
    end
  end
end

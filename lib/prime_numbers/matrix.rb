class PrimeNumbers::Matrix
  attr_accessor :primes

  def initialize primes=[]
    self.primes = primes
  end

  def matrix
    generate_matrix(primes.count + 1).tap do |grid|
      grid.each_with_index do |row, row_index|
        row.each_with_index do |cell, column_index|
          fill_cell(grid, cell, column_index, row_index)
        end
      end
    end
  end

  private

  def fill_cell(grid, cell, column_index, row_index)
    unless starting_cell?(row_index, column_index)
      assign_cell(grid, row_index, column_index)
    end
  end

  protected

  def generate_matrix(cell)
    Array.new(cell).map { Array.new(cell) }
  end

  def assign_cell(grid, row, column)
    if row.zero?
      grid[row][column] = index_of_prime(column)
    elsif column.zero?
      grid[row][column] = index_of_prime(row)
    else
      grid[row][column] = index_of_prime(column) * index_of_prime(row)
    end
  end

  def index_of_prime(index)
    primes[index - 1]
  end

  def starting_cell?(row, column)
    row.zero? && column.zero?
  end
end

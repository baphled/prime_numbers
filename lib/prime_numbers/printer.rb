class PrimeNumbers::Printer
  def self.display(matrix)
    padding = grid_padding(matrix)

    puts map_matrix(matrix, padding)
  end

  def self.map_matrix(matrix, padding)
    matrix.map{|row| join_row(row, padding) }
  end

  def self.join_row(row, padding)
    row.map { |cell| "%#{padding}s" % cell }.join
  end

  def self.grid_padding(matrix)
    matrix.max_by { |c| c.map(&:to_i) }.max.to_s.length + 1
  end
end

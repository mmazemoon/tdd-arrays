class Array
  def remove_dups
    result = []
    self.each do |obj|
      result << obj unless result.include?(obj)
    end
    result
  end

  # iterating through the indices
  # calling each array element by referencing the indices

  def two_sum
    results = []
    (0...length).each do |i|
      (i + 1...length).each do |j|
        results << [i, j] if self[i] + self[j] == 0
      end
    end
    results
  end

  def my_transpose
    result = Array.new(self[0].length){ Array.new(self.length) }
    self.each_with_index do |row, i|
      row.each_with_index do |el, j|
          result[j][i] = el
      end
    end
    result
  end

  def stock_picker
    highest_profit = 0
    lowest_price_day = 0
    highest_price_day = 0

    (0...length).each do |i|
      (i + 1...length).each do |j|
        if self[j] - self[i] > highest_profit
          highest_price_day, lowest_price_day = j, i
          highest_profit = self[j] - self[i]
        end
      end
    end

    [lowest_price_day, highest_price_day]
  end
end

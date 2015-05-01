require "rspec"
require "arrays"

describe "Array" do
  describe "#remove_dups" do
    let(:blank_array) {[]}
    it "returns a new array" do
      expect(blank_array.remove_dups).to_not be(blank_array)
    end

    it "removes duplicate elements from an array" do
      expect([1, 2, 1, 3, 3].remove_dups).to eq([1, 2, 3])
    end
  end

  describe '#two_sum' do
    let(:test_array) {[-1, 0, 2, -2, 1]}
    it "each pair of positions sums to zero, and they are sorted" do
      expect(test_array.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    let(:rows) {[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]}
    let(:cols) {[
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]}
    it "it will convert between the row-oriented and column-oriented representations " do
      expect(rows.my_transpose).to eq(cols)
    end
  end

  describe "#stock_picker" do
    let(:stock_prices) {[60, 10, 100, 50, 30, 110, 50, 110, 40]}
    it "picks two days with the highest difference in prices" do
      expect(stock_prices.stock_picker).to eq([1,5])
    end
  end
end

require 'test_helper'

module Ands
  class BubblesortTest < Minitest::Test
    def setup
      @array = [1, 4, 3, 5, 9, 6, 7, 0, 8, 2]
    end

    def test_array_gets_sorted_asc
      sorter = Ands::Bubblesort.new(@array)
      result = sorter.call
      assert(result == (0..9).to_a)
    end

    def test_array_gets_sorted_desc
      sorter = Ands::Bubblesort.new(@array, :desc)
      result = sorter.call
      assert(result == (0..9).to_a.reverse)
    end
  end
end

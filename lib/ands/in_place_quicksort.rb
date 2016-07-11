module Ands
  class InPlaceQuicksort
    def initialize(array, direction = :asc)
      @array = array
      @direction = direction
    end

    def call
      sort(0, array.size - 1)
    end

    private

    attr_reader :array, :direction

    def sort(min, max)
      return if min > max
      pivot_index = partition(min, max)
      sort(min, pivot_index - 1)
      sort(pivot_index + 1, max)
      array
    end

    def partition(left, right)
      pivot_value = array[right]
      new_pivot_index = left
      (left..right-1).each do |i|
        if pivot_comparison(array[i], pivot_value)
          switch_elements_in_array(i, new_pivot_index)
          new_pivot_index += 1
        end
      end
      switch_elements_in_array(new_pivot_index, right)
      new_pivot_index
    end

    def switch_elements_in_array(index_one, index_two)
      array[index_one], array[index_two] =
        array[index_two], array[index_one]
    end

    def pivot_comparison(value, pivot)
      direction == :asc ? value <= pivot : value >= pivot
    end
  end
end

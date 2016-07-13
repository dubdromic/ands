module Ands
  class Mergesort
    def initialize(array, direction = :asc)
      @array = array
      @direction = direction
      @run = 0
    end

    def call
      sort @array
    end

    private

    attr_reader :direction

    def sort(array)
      return array if array.length <= 1
      even_and_odd = { true => [], false => [] }

      array.each_with_index { |v, i| even_and_odd[i.even?] << v }
      left, right = sort(even_and_odd[true]), sort(even_and_odd[false])
      merge(left, right)
    end

    def merge(left, right)
      merged_array = []

      while !left.empty? && !right.empty?
        left_first, *left_rest = left
        right_first, *right_rest = right

        if compare(left_first, right_first)
          merged_array << left_first
          left = left_rest
        else
          merged_array << right_first
          right = right_rest
        end
      end

      left.each { |v| first, *left = *left; merged_array << first  }
      right.each { |v| first, *right = *right; merged_array << first }

      merged_array
    end

    def compare(one, two)
      direction == :asc ? one <= two : one >= two
    end
  end
end

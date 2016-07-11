module Ands
  class Quicksort
    def initialize(array, direction = :asc)
      @array = array
      @direction = direction
    end

    def call
      sort(@array)
    end

    private

    attr_reader :direction

    def sort(array)
      return [] if array.length == 0
      x, *xs = *array
      less, more = xs.partition do |y|
        direction == :asc ? y < x : x < y
      end
      sort(less) + [x] + sort(more)
    end
  end
end

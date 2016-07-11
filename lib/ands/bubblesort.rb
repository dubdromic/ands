module Ands
  class Bubblesort
    def initialize(array, direction = :asc)
      @array = array
      @direction = direction
    end

    def call
      begin
        keep_going = false
        length = array.length
        (0..length - 1).each do |this_index|
          next_index = this_index + 1
          break if length == next_index
          if compare(this_index, next_index)
            switch(this_index, next_index)
            keep_going = true
          end
        end
      end while keep_going
      array
    end

    private

    attr_reader :array, :direction

    def switch(one, two)
      array[one], array[two] = array[two], array[one]
    end

    def compare(one, two)
      direction == :asc ? array[one] >= array[two] : array[one] <= array[two]
    end
  end
end

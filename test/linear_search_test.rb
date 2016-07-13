require 'test_helper'

module Ands
  class LinearSearchTest < Minitest::Test
    def test_is_finds_the_thing
      result = LinearSearch.call(1, [5, 4, 3, 2, 1, 0])
      assert(result)
    end
  end
end

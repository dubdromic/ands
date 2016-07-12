require 'test_helper'

module Ands
  class QuicksortTest < Minitest::Test
    include SorterTest

    def setup
      @klass = Ands::Quicksort
      super
    end
  end
end

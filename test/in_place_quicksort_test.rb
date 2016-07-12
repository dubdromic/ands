require 'test_helper'

module Ands
  class InPlaceQuicksortTest < Minitest::Test
    include SorterTest

    def setup
      @klass = Ands::InPlaceQuicksort
      super
    end
  end
end

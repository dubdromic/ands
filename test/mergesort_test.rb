require 'test_helper'

module Ands
  class MergesortTest < Minitest::Test
    include SorterTest

    def setup
      @klass = Ands::Mergesort
      super
    end
  end
end

require 'test_helper'

module Ands
  class BubblesortTest < Minitest::Test
    include SorterTest

    def setup
      @klass = Ands::Bubblesort
      super
    end
  end
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'ands'

require 'minitest/autorun'

module SorterTest
  def test_sorting_asc
    sorter = @klass.new (0..9).to_a.shuffle
    assert(sorter.call == (0..9).to_a)
  end

  def test_sorting_desc
    sorter = @klass.new((0..9).to_a.shuffle, :desc)
    assert(sorter.call == (0..9).to_a.reverse)
  end
end

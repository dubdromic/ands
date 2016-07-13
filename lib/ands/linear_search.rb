module Ands
  class LinearSearch
    def self.call(needle, haystack)
      haystack.select { |v| v == needle }.any?
    end
  end
end


module Summarise
  module StringExtensions
    def summarise(l=200)
      i = 0
      self.split.map{ |word| word if (i += word.length) < l}.compact.join(' ')
    end

    def summarisable?(length=200)
      return self.summarise(length) != self
    end
  end
end

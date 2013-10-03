
module Summarise
  module StringExtensions
    def summarise(l=200, args={})
      i = 0
      summary = self.split.map{ |word| word if (i += word.length) < l}.compact.join(' ')
      if args[:suffix] && self != summary
        summary << args[:suffix]
      end
      summary
    end

    def summarisable?(length=200)
      return self.summarise(length) != self
    end

    alias_method :summarize, :summarise
    alias_method :summarizable?, :summarisable?

  end
end

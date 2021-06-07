 class LRUCache
    def initialize(size)
        @cache = Array.new(size)
    end

    def count
        count = 0
        @cache.each {|ele| count += ele}
      # returns number of elements currently in cache
      count
    end

    def add(el)
        if self.count == @cache.length
            @cache.shift
        end
        @cache.push(el)
      # adds element to cache according to LRU principle
    end

    def show
        @cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end
 class LRUCache
    def initialize(size)
        @cache = []
        @size = size
    end

    def count
        @cache.length
    #   # returns number of elements currently in cache
    end

    def add(el)
        if self.count == @size
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
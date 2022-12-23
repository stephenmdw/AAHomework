class LRUCache
    def initialize(size)
        @store = Array.new(size)
        @size = size
    end

    def count
        # returns number of elements currently in cache
        @store.length
    end

    def add(el)
      # adds element to cache according to LRU principle
        if @store.length < @size
            if !@store.include?(el)
                @store << el
            else 
                @store.delete(el)
                @store << el
            end 
        end

        if @store.length == @size
            if @store.include?(el)
                @store.delete(el)
                @store.push(el)
            else
                @store.shift
                @store.push(el)
            end
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
        @store
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

 p johnny_cache.show 

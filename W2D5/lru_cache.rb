def LRUCache
    attr_reader :array
    def initialize(size=4)
        @size = size
        @array = []
    end

    def add(el)
        arr.each do |el|
            if array.include?(el)
                array.delete(el)
            else
                array.shift
            end
            array << el
        end
    end

    def count
      array.count
    end

    def show
      array
    end

    private
    attr_reader :size

  
end

lru = LRUCache.new
lru.add(1)
lru.add(2)
lru.show
lru.count
lru.add(3)
lru.show
lru.add(4)
lru.show
lru.count
lru.add(5)
lru.add(1)
lru.show
lru.count
lru.add(6)
lru.count
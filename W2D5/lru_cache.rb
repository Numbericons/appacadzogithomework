def LRUCache
    attr_reader :array
    def initialize(size)
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
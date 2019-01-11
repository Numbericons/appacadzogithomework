  class Stack
    def initialize
        @stack_arr = []
    end

    def push(el)
        @stack_arr.push(el)
    end

    def pop
        @stack_arr.pop
    end

    def peek
        @stack_arr.last
    end
  end

  class Queue
    def initialize
        @stack_arr = []
    end

    def queue(el)
        @stack_arr.unshift(el)
    end

    def dequeue
        @stack_arr.shift
    end

    def peek
        @stack_arr.first
    end
  end

  class ArrMap
    def initialize
        @map = []
    end

    def set(key, value)
        if @map.any? { |arr| arr.include?(key) }
            @map.each { |arr| arr[1] = value if arr[0] == key }
        else
            @map << [key, value]
        end
    end

    def get(key)
        @map.select { |arr| return arr[1] if arr[0] == key }
    end

    def delete(key)
        ret_arr = []
        @map.each { |arr| ret_arr << arr unless arr[0] == key }
        @map = ret_arr
    end

    def show
        @map
    end
  end
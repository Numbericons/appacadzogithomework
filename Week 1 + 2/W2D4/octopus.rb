def sluggish_oct(arr)
    # Without a proc
    sorted = false
    until sorted
      sorted = true

      each_index do |i|
        next if i + 1 == arr.length
        j = i + 1
        if arr[i] > arr[j]
          sorted = false
          arr[i], arr[j] = arr[j], arr[i]
        end
      end
    end

    arr
end

def dominant_octopus(arr)
    prc ||= proc {|a, b| a<=>b}
    return arr if size < 2

    pivot = first
    left = arr[1..-1].select{|el| prc.call(el, pivot) == -1}
    right = arr[1..-1].select{|el| prc.call(el, pivot) != -1}

    left.dominant_octopus(&prc) + [pivot] + right.dominant_octopus(&prc)
  end
end

def clever_octopus(arr)
    longest = ""
    arr.each do |fish|
        longest = fish if fish.length > longest.length
    end
    longest
end

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |dir_el,i|
        return i if dir_el == direction
    end
end

def fast_dance(direction,hash)
    tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
    }

    return hash[direction]
end
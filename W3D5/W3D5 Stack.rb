class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

end

class Queue
    
    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end

class Map
    def initialize
        @map = Array.new
    end

    #search the array for all element 0s of the subarrays
    #if it includes the key, then we need to update the value
    #else, we add a new subarray with the key value pair.
    def set(key,value)
        @map.each do |subArray|
            if subArray[0] == key
                subArray[1] = value
                return @map
            end
        end

        @map << [key,value]
    end

    def get(key)
        @map.each do |subArray|
            if subArray[0] == key
                return subArray
            end
        end

        return "key does not exist"
    end

    def delete(key)
        @map.each do |subArray|
            if subArray[0] == key
                @map.delete(subArray)
            end
        end
    end

    def show
        p @map
    end
end
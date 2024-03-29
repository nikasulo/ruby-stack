require_relative '../lib/node'

class Stack
    def initialize
        @first = nil        
    end

    def push(number)
        @first = Node.new(number, @first)
    end

    def popFront
        raise "Stack is empty" if is_empty?
        @first = @first.next_node
    end

    def topFront
        @first.value if !is_empty?
    end

    def is_empty?
        @first.nil?
    end

    
end


# s =  Stack.new
# s.push(2)
# p s.topFront
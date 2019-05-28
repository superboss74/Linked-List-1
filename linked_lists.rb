# This Class implements a simple single node linked list
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
# This Class will help me implement a Stack
class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
    # puts data.value
  end

  def pop
    if @data.nil?
      nil
    else
      returning_value = @data.value
      @data = @data.next_node
      returning_value
    end
  end
end

# This method should print the linked list

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

# This method reverse the linked list

def reversed_linked_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end
  LinkedListNode.new(stack.pop, stack.data)
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts '-------'
revlist = reversed_linked_list(node3)
print_values(revlist)

require_relative 'linked_list'
# This class will help us deploy and manipulate a class
class Stack < LinkedListNode
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    new_node = LinkedListNode.new(value, @data)
    @data = new_node
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

# This method reverse the linked list
def reversed_linked_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end
  stack.data
end

# This method should print the linked list
def print_values(list_node)
  if !list_node
    print "nil\n"
  else
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts '-------'
revlist = reversed_linked_list(node3)
print_values(revlist)

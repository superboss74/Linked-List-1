require_relative 'linked_list'
# This class will help us deploy and manipulate a class
class Stack < LinkedListNode
  attr_accessor :data, :reversed_list

  def initialize
    @data = nil
  end
  # defining a custom push method for this class
  def push(value)
    new_node = LinkedListNode.new(value, @data)
    @data = new_node
  end

  # This method reverse the linked list
  def reversed_linked_list(list)
    @reversed_list = Stack.new
    while list
      reversed_list.push(list.value)
      list = list.next_node
    end
    reversed_list.data
  end

  # This recursive method should print a given inked list
  def print_values(list)
    if !list
      print "nil\n"
    else
      print "#{list.value} -> "
      print_values(list.next_node)
    end
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(23, node3)

linked_list = Stack.new
linked_list.print_values(node4)
puts '-------'
linked_list.print_values(linked_list.reversed_linked_list(node4))

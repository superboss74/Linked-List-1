# This Class implements a simple single node linked list
class LinkedListNode
  attr_accessor :value, :next_node, :list_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
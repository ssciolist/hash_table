class LinkedList
  attr_reader :value
  attr_accessor :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end

  def append(value)
    if @next_node.nil?
     @next_node = LinkedList.new(value)
   else
     current_node = @next_node

     until current_node.next_node.nil?
       current_node = current_node.next_node
     end

     current_node.next_node = LinkedList.new(value)
   end
  end

  def find
  end
end

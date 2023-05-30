class LinkedList
  attr_accessor :head

  def initialize
    @head = Node.new
  end

  def append(value)
    if @head.value == nil
      @head.value = value
    else
      current_node = @head
      new_node = Node.new(value)
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    if @head.value.nil?
      @head.value = value
    else
      new_node = Node.new(value)
      new_node.next_node = @head
      @head = new_node
    end
  end
end

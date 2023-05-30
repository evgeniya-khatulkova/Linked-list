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

  def size
    sum = 0
    if @head.next_node == nil
      sum
    else
      current_node = @head
      until current_node.next_node == nil
        sum += 1
        current_node = current_node.next_node
      end
      sum + 1
    end
  end

  def at(index)
    sum = 0
    current_node = @head
    until sum == index
      current_node = current_node.next_node
      sum += 1
    end
    current_node
  end
end

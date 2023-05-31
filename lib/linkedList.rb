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

  def tail
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node
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

  def pop
    current_node = @head
    previous_node = current_node
    until current_node.next_node.nil?
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = nil
  end

  def contains?(value)
    current_node = @head
    until current_node.next_node.nil?
      if current_node.value == value
        return true
      else
        current_node = current_node.next_node
      end
    end
    return false
  end

  #  returns the index of the node containing value, or nil if

  def find(value)
    sum = 0
    current_node = @head
    until current_node.next_node.nil?
      if current_node.value == value
        return sum
      else
        current_node = current_node.next_node
        sum += 1
      end
    end
    current_node.value == value ? sum : nil
  end

  def to_s
    string = ''
    current_node = @head
    until current_node.next_node.nil?
      string += "(#{current_node.value}) -> "
      current_node = current_node.next_node
    end
    string + "(#{current_node.value}) -> nil"
  end

  # inserts a new node with the provided value at the given index

  def insert_at(value, index)
    sum = 0
    new_node = Node.new(value)
    current_node = @head
    previous_node = @head
    until sum == index
      previous_node = current_node
      current_node = current_node.next_node
      sum += 1
    end
    new_node.next_node = current_node
    previous_node.next_node = new_node
  end

  # removes the node at the given index
  def remove_at(index)
  end

end

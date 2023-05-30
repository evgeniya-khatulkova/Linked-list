require_relative 'node'
require_relative 'linkedList'

linked = LinkedList.new
# p linked.head

linked.prepend("cool")
# p linked
linked.prepend("yo")
# p linked


linked.append("end")
p linked
p linked.size

second = LinkedList.new
p second.size

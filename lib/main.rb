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
# linked.pop
p linked
# p linked.tail

# p linked.contains?("yo")
# p linked.contains?("myau")

# p linked.find('cool')
# p linked.find('myau')

# p linked.to_s

p linked.insert_at('wow!!!', 1)
p linked

p linked.remove_at(1)
p linked

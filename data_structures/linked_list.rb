class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value)
    @head = Node.new(value)
  end

  def add(value)
    current_node = @head
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value)
  end

  def show
    current_node = @head
    while current_node.next_node
      print current_node.value, ' -> '
      current_node = current_node.next_node
    end
    puts current_node.value
  end
end

# metro stations of line 13
ligne_13 = LinkedList.new('Asnières – Gennevilliers – Les Courtilles')
ligne_13.add('Les Agnettes')
ligne_13.add('Gabriel Péri')

ligne_13.show


class Node
  attr_reader :value, :adjacent_nodes

  def initialize(value)
    @value = value
    @adjacent_nodes = []
  end

  def add_edge(adjacent_node)
    @adjacent_nodes << adjacent_node
  end
end

class Graph
  def initialize
    @nodes = {}
  end

  def add_node(node)
    @nodes[node.value] = node
  end

  def add_edge(node_val_1, node_val_2)
    node_1 = @nodes[node_val_1]
    node_2 = @nodes[node_val_2]
    node_1.add_edge(node_2)
    node_2.add_edge(node_1)
  end
end

cities = [Node.new('Paris'), Node.new('New York'), Node.new('Marrakech')]

favourite_cities = Graph.new
cities.each { |city| favourite_cities.add_node(city) }
favourite_cities.add_edge('Paris', 'New York')
favourite_cities.add_edge('Paris', 'Marrakech')

cities.first.adjacent_nodes # returns NY and Marrakech nodes
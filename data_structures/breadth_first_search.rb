# BFS of a graph
require_relative 'graph.rb'

def breadth_first_search(root_node)
  queue << root_node
  visited << root_node

  while queue.any?
    node = queue.shift
    node.adjacent_nodes.each do |adj_node|
      next if visited.include?(adj_node)
      queue << adj_node
      visited << adj_node
    end
  end
end
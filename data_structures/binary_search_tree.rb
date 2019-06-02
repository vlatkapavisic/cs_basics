class Node
  attr_reader :key, :left, :right

  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def insert(new_key)
    return self if new_key == @key
    if new_key < @key
      @left.nil? ? @left = Node.new(new_key) : @left.insert(new_key)
    else
      @right.nil? @right = Node.new(new_key) : @right.insert(new_key)
    end
  end
end

class BinarySearchTree
  def initialize(root_key)
    @root = Node.new(root_key)
  end

  def add_node(new_key)
    if @root.nil?
      @root = Node.new(new_key)
    else
      @root.insert(new_key)
    end
  end

  def search(key, node = @root)
    return nil if node.nil?
    if node.key == key
      return node
    elsif key < node.key
      search(node.left)
    else
      search(key, node.right)
    end
  end
end
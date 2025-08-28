class BinaryTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  # Insert value into the tree
  def insert(value)
    @root = insert_node(@root, value)
  end

  def insert_node(node, value)
    return Node.new(value) if node.nil?

    if value < node.value
      node.left = insert_node(node.left, value)
    else
      node.right = insert_node(node.right, value)
    end

    node
  end

  # In-order traversal: Left, Root, Right
  def in_order(node = @root)
    return if node.nil?

    in_order(node.left)
    print "#{node.value} "
    in_order(node.right)
  end
end

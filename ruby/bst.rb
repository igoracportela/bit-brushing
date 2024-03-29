#
# Author - Igor A. C. Portela | Copyright(c) 2023. All rights reserved.
# github - @igoracportela
#
class Node
  ATTRS = %i[value left_node right_node]

  attr_accessor(*ATTRS)

  def initialize(attrs)
    ATTRS.each { |key| instance_variable_set("@#{key}", attrs[key]) }
  end
end

class BinaryTree
  attr_accessor :root_node

  def initialize(root_val = nil)
    attrs = {value: root_val}
    
    @root_node = Node.new(attrs) if root_val
  end

  def search(value)
    return nil if @root_node.nil?

    search_at_node(@root_node, value)
  end

  def search_at_node(tree_node, value)
    return nil if tree_node.nil?

    return tree_node if value == tree_node.value

    return search_at_node(tree_node.left_node, value) if value < tree_node.value

    search_at_node(tree_node.right_node, value)
  end

  def traverse(&block)
    traverse_at_node(@root_node, &block)
  end

  def traverse_at_node(node, &block)
    return if node.nil?

    traverse_at_node(node.left_node, &block)

    yield node.value if block_given?

    traverse_at_node(node.right_node, &block)
  end

  def insert(value)
    attrs = { value: value }
    new_node = Node.new(attrs)
    @root_node = new_node and return if @root_node.nil?

    insert_at_node(@root_node, new_node)
  end

  def insert_at_node(tree_node, new_node)
    tree_node = new_node and return if tree_node.nil?

    return tree_node if tree_node.value == new_node.value
    
    if new_node.value < tree_node.value
      return insert_at_node(tree_node.left_node, new_node) unless tree_node.left_node.nil?

      return tree_node.left_node = new_node
    end

    return insert_at_node(tree_node.right_node, new_node) unless tree_node.right_node.nil?

    tree_node.right_node = new_node   
  end
end

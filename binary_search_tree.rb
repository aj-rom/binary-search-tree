
class BST

  attr_accessor :data, :left, :right

  def initialize(key)
    @data = key
    @left = nil
    @right = nil
  end

  def insert(num)
    if num <= @data
      @left.nil? ? @left = BST.new(num) : @left.insert(num)
    else
      @right.nil? ? @right = BST.new(num) : @right.insert(num)
    end
  end

  def each(&block)
    left&.each(&block)
    block.call(data)
    right&.each(&block)
  end
end
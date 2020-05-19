class TodoItem
  attr_reader :name, :category, :deadline, :completed

  def initialize(name, category, deadline=" ")
    @name = name
    @category = category
    @deadline = deadline
    @completed = false
  end

  def complete
    @completed = true
  end
end

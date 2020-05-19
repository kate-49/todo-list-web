require_relative 'todoitem'
class ToDoList
  def initialize
    @items = [TodoItem.new("Buy milk", "Domestic", "Monday"),
              TodoItem.new("Tax returns", "Finance", "Friday"),
              TodoItem.new("Buy coffee", "Domestic", "Sunday")
    ]
  end

  def add_item(name,category,deadline)
    item = TodoItem.new(name, category, deadline)
    @items.push(item)
  end

  def by_category(category)
    @items.select {|item| item.category == category}
  end

  def items
    @items
  end

  def remove_item(name)
    @items.each { |item|
      if item.name == name
        @items.delete(item)
      end
    }
  end

  def complete_item(name)
    @items.each { |item|
      if item.name == name
        item.complete
      end
    }
  end

end

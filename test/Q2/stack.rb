# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

class Stack
  # first in last out data structure
  attr_reader :container

  def initialize()
    # set a new array name as container
    @container=[]
  end

  def add(data)
    #   add one data to the last of array
    unless data.nil?
      # only push unNil object into array
      @container.push(data)
    end
  end

  def remove()
    #   remove the last one of array(Last in first out)
    if @container.length>0

      @container.pop()
    else
      p "No data in the stack"
    end
  end

end

# stack test case
stack=Stack.new
stack.remove()
stack.add(1)
p stack.container


# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

class Queue

    # first in first out data structure
    attr_reader :container

    def initialize()
      # set a new array name as container
      @container=[]
    end

    def add(data)
      #   add one data to the last of array
      unless data.nil?
        # only push nonNil object into array
        @container.push(data)
      end
    end

    def remove()
      #   remove the first one of array(first in first out)
      if @container.length>0

        @container.shift()
      else
        p "No data in the queue"
      end
    end

  end





# stack test case
queue=Queue.new
queue.remove()
queue.add(1)
queue.add(2)
queue.add(3)
p queue.container
queue.remove
p queue.container

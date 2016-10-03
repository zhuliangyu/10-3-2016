# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

module SayHi
  def hey
    p "Hey!!!You are awsome!"
  end
end

class Ricky_include
  include SayHi

end

class Ricky_extend
  extend SayHi
end

# extend is the same as a static method(Class method) in Java, Class could use the method
Ricky_extend.hey

# include is a instance method, and has to use it after new a Class
ricky=Ricky_include.new
ricky.hey
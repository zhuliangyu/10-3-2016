# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.


module HelperMethods
  def self.titleize(string)
    omit_array=["in","the", "of", "and", "or", "from"]
    words_array=string.split
    new_array=[]
    words_array.each do |elem|
      if omit_array.include?elem
        new_array.push(elem)
      else
        new_array.push(elem.capitalize)
      end
    end
    return new_array.join(" ")


  end


end

# "in","the", "of", "and", "or", "from"
# p HelperMethods.titleize("i have a of dream")
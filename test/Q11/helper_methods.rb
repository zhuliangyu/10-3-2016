# 11. BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.


module HelperMethods
  def self.titleize(string)
    omit_array=["in", "the", "of", "and", "or", "from"]
    words_array=string.split
    # use map() instead of each()
    new_array=words_array.map do |elem|
          if omit_array.include? elem
            # new_array.push(elem)
            elem
          else
            # new_array.push(elem.capitalize)
            elem.capitalize
          end
        end
    return new_array.join(" ")


  end


end

# test case
# "in","the", "of", "and", "or", "from"
# p HelperMethods.titleize("i have a of dream")
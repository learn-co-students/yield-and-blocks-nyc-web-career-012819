require 'pry'

def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
      yield(array[i])
      i = i + 1
    end
  else
    puts "Hey! No block was given!"
  end

  array
end

# call your method here!

# hello_t(["Tim", "Tom", "Jim"]) { |name| puts name }
# hello_t(["Ali", "Jasmine", "Persephone"]) { |name| puts name.upcase }
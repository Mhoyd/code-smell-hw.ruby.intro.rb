# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.empty?
    sum = 0
  else
    arr.each do |e|
      sum += e
    end
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  max = arr.max(2)
  max.each {|e| sum += e}
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A[a-zA-z&&[^aeiouAEIOU]]/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A[0-1]/
    num = s.to_i(2)
    if num % 4 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)

  raise ArgumentError, "ISBN number is invalid" if isbn.empty?
  raise ArgumentError, "Price should greater than 0" if price <= 0

  @isbn = isbn
  @price = price
end

attr_accessor :isbn, :price

def price_as_string()
  s = @price.to_f
  return "$#{'%.2f' % s}"
end

end

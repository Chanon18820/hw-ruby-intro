# When done, submit this entire file to the autograder.

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.reduce(0) { |acc, x| acc + x }

end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  sorted = arr.sort.reverse
  sorted[0] + sorted[1]
end

def sum_to_n?(arr, n)
  return false if arr.length < 2

  seen = {}
  arr.each do |num|
    return true if seen[n - num]
    seen[num] = true
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.nil? || s.empty?
  /^[b-df-hj-np-tv-z]/i.match?(s)
end

def binary_multiple_of_4?(s)
  return false unless /^[01]+$/.match?(s)
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end

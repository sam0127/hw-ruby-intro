# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE#
  sum = 0
  for a in arr
    sum += a
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr.at(0)
  end
  largest = arr.at(0)
  secondLargest = arr.at(1)
  for a in arr.drop(2)
    if a > largest then
      largest = a
    elsif a > secondLargest then
      secondLargest = a
    end
  end
  return largest + secondLargest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 1
  for a in arr
    for b in arr.drop(i)
      if a + b == n then
        return true
      end
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ""
    return false
  end
  start = s[0]
  start = start.capitalize
  if start.ord == 65 or start.ord == 69 or start.ord == 73 or start.ord == 79 or start.ord == 85
    return false
  elsif start.ord >= 65 and start.ord <= 90
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  chars = s.split('')
  chars.each{ |c|
    if c != '0' and c != '1' then
      return false
    end
  }

  stoi = s.to_i
  if stoi % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, "ISBN is empty" unless isbn != ''
    raise ArgumentError, "Price is less than or equal to zero" unless price > 0
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price_as_string()
    return "$%.2f" % @price
  end
end

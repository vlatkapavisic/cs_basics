# worst-case performance : O(logn)
# best case performance : O(n)

class Array
  def binary_search_for(target)
    min = 0
    max = self.length - 1
    while min <= max
      guess = (min + max)/2
      return guess if self[guess] == target
      target > guess ? min = guess + 1 : max = guess - 1
    end
    return -1 # target not found
  end

  def recursive_binary_search_for(min = 0, max = self.length - 1, target)
    return -1 if min > max
    guess = (min + max) / 2
    if self[guess] == target
      return guess
    elsif target > self[guess]
      min = guess + 1
    elsif target < self[guess]
      max = guess - 1
    end
    recursive_binary_search_for(min, max, target)
  end
end

a = *ARGV.map(&:to_i)
puts a.recursive_binary_search_for(a[10])

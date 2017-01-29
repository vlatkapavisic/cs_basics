# worst-case performance : O(logn)
# best case performance : O(n)

class Array
  def binary_search_for(target)
    min = 0
    max = self.length - 1
    while min < max
      guess = (min + max)/2
      return guess if self[guess] == target
      target > guess ? min = guess + 1 : max = guess - 1
    end
    return -1 # target not found
  end
end

a = *ARGV.map(&:to_i)
puts a.binary_search_for(a[10])

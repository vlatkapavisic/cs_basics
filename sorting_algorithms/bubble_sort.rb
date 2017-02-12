# worst and average case : O(n^2), best : O(n)

class Array
  def bubble_sort
    swapped = true
    while swapped
      swapped = false
      (self.length - 1).times do |i|
        if self[i] > self[i+1]
          self.swap(i, i+1)
          swapped = true
        end
      end
    end
    self
  end

  def swap(i, j)
    t = self[i]
    self[i] = self[j]
    self[j] = t
  end
end

a = *ARGV.map(&:to_i)
puts a.bubble_sort

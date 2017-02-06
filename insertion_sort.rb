# running time : worst and average O(n^2), best case O(n)

class Array
  def insertion_sort
    self.each_with_index do |el, i|
      j = i - 1
      while j >= 0
        break if el >= self[j]
        self[j+1] = self[j]
        j -= 1
      end
      self[j+1] = el
    end
  end
end

a = *ARGV.map(&:to_i)
puts a.insertion_sort


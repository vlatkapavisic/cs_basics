class Array
  def selection_sort
    n = self.length - 1
    n.times do |i|
      min_i = i
      (i + 1).upto(n) do |j|
        min_i = j if self[j] < self[min_i]
      end

      self[i], self[min_i] = self[min_i], self[i] if min_i != i
    end
    self
  end
end

a = *ARGV.map(&:to_i)
puts a.selection_sort

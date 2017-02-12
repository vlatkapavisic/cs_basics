# running time : O(nlogn)
# worst case : unbalanced partitions ; running time : O(n^2)
# improvement : choose pivot randomly (or as a median of 3 or 5 randomly chosen elements)

def quicksort(a)
  return a if a.length <= 1
  pivot = a.delete_at(rand(a.length))
  l, g, sorted_a = [], [], []
  a.each { |el| el <= pivot ? l << el : g << el }
  sorted_a << quicksort(l) << pivot << quicksort(g)
end

a = *ARGV.map(&:to_i)
puts quicksort(a)

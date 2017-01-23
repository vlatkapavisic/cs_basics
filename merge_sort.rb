# complexity : O(nlogn)

def mergesort(a)
  return a if a.length == 1
  middle = a.length/2
  merge(mergesort(a[0...middle]), mergesort(a[middle..-1]))
end

def merge(left, right)
  subarray = []
  until left.length == 0 || right.length == 0
    subarray << (left.first <= right.first ? left.shift : right.shift)
  end
  subarray + left + right
end


a = *ARGV.map(&:to_i)
puts mergesort(a)

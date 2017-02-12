class String

  # Implement an algorithm to determine if a string has all unique characters.
  def has_unique_characters?
    self.length == self.split('').uniq.length
  end

  # Write a method to decide if two strings are anagrams or not
  def anagram_of?(s)
    self == s.reverse
  end

  # Write a method to replace all spaces in a string with ‘%20’
  def encode_spaces
    gsub(' ', '%20')
  end

  # Assume you have a method isSubstring which checks if one word is a substring of another
  # Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to
  # isSubstring (i e , “waterbottle” is a rotation of “erbottlewat”)

  def rotation_of? s
    self.length == s.length && self.concat(self).include?(s)
  end

  # check if a string is a palindrome recursively
  def palindrome?
    return true if self.length <= 1
    return false if self[0] != self[-1]
    self[1..-2].palindrome?
  end

end

# Write code to reverse a C-Style String
# str.reverse

# Design an algorithm and write code to remove the duplicate characters in a string without using any additional buffer
# str.split('').uniq.join('')

# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column is set to 0
matrix = [
  [1, 3, 5, 0],
  [3, 4, 0, 2],
  [9, 8, 7, 6]
]
m = matrix.length
n = matrix.first.length
zeros_rows, zeros_columns = [], []

m.times do |i|
  n.times do |j|
    if matrix[i][j] == 0
      zeros_rows << i
      zeros_columns << j
    end
  end
end

m.times do |i|
  n.times do |j|
    matrix[i][j] = 0 if zeros_rows.include?(i) || zeros_columns.include?(j)
  end
end

puts matrix.inspect






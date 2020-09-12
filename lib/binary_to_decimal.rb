# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimals = 0
  total_decimal = 0
  index = binary_array.length - 1
  
  binary_array.each do |num|
    decimals = num * (2 ** index)
    total_decimal = total_decimal.to_f + decimals.to_f
    index = index - 1
  end
  return total_decimal
end

binary_num = [0, 0, 1, 0, 1, 1, 0, 1]
binary_to_decimal(binary_num)



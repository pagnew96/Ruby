# frozen_string_literal: true

num_array = [4, 3, 78, 2, 0, 2] # 4 loops over the array untill sorted
num_array1 = [0, 1, 2, 3, 4, 5] # 1 loop over the array until sorted
num_array2 = [5, 4, 3, 2, 1, 0] # 5 loops over the array until sorted

def bubble_sort(array_to_sort)
  n = array_to_sort.length
  loop do
    swapped = false

    (n - 1).times do |i|
      next unless array_to_sort[i] > array_to_sort[i + 1]

      array_to_sort[i], array_to_sort[i + 1] = array_to_sort[i + 1], array_to_sort[i]
      swapped = true
    end

    n -= 1
    break unless swapped
  end

  array_to_sort
end

p bubble_sort(num_array)
p bubble_sort(num_array1)
p bubble_sort(num_array2)

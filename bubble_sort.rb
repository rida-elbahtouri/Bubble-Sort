def bubble_sort(array)
  array_size = array.length
  print array
  puts ''
  (array_size - 1).times do |pass|
    (array_size - 1 - pass).times do |swap|
      next unless array[swap] > array[swap + 1]

      temp = array[swap + 1]
      array[swap + 1] = array[swap]
      array[swap] = temp
    end
  end
  array
end

# testing bubble_sort

print bubble_sort([4, 6, 3, 6, 7, 8, 0])

def bubble_sort_by(arr_param)
  array_size = arr_param.length
  puts ''
  print arr_param
  puts ''
  (array_size - 2).times do |pass|
    (array_size - 1 - pass).times do |swap|
      next unless yield(arr_param[swap], arr_param[swap + 1]).positive?

      temp = arr_param[swap + 1]
      arr_param[swap + 1] = arr_param[swap]
      arr_param[swap] = temp
    end
    print arr_param
    puts ''
    return arr_param
  end
end

# testing bubble_sort_by

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

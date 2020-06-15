# (2,1)  loop 1 check 0 < 1 swap  (1,2)
# (2,3,1) pass 1[loop 1 check 0<1 swap  loop 2 check 1<2 swap] // pass2 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap]
# (2,3,5,6) pass 1[loop 1 check 0<1 swap  loop 2 check 1<2 swap loop3 check (3,4) swap ]// pass2 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap] loop3 check (3,4) swap] // pass 3 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap loop3 check (3,4) swap ]

# bubble sort O(n^2)   n=2 pass =1 swap=1 n=3 pass=2 swaps=2 .....n=n

def bubble_sort(array)
  array_size = array.length
  print array
  puts ''

  (array_size - 1).times do |_pass|
    (array_size - 1).times do |swap|
      next unless array[swap] > array[swap + 1]

      temp = array[swap + 1]
      array[swap + 1] = array[swap]
      array[swap] = temp
    end
  end
  print array
end

bubble_sort([4, 6, 3, 6, 7, 8, 0])

# bubble_sort([7])

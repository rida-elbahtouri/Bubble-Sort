# (2,1)  loop 1 check 0 < 1 swap  (1,2)
# (2,3,1) pass 1[loop 1 check 0<1 swap  loop 2 check 1<2 swap] // pass2 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap]
# (2,3,5,6) pass 1[loop 1 check 0<1 swap  loop 2 check 1<2 swap loop3 check (3,4) swap ]// pass2 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap] loop3 check (3,4) swap] // pass 3 [ loop 1 check 0<1 swap  loop 2 check 1<2 swap loop3 check (3,4) swap ]

# bubble sort O(n^2)   n=2 pass =1 swap=1 n=3 pass=2 swaps=2 .....n=n

def bubble_sort(array)
  array_size = array.length
  print array
  puts ''
  (array_size - 1).times do |_pass|
    (array_size - 1 - _pass).times do |swap|
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

def bubble_sort_by(ar)
  array_size = ar.length
  puts ''
  print ar
  puts ''
  (array_size - 2).times do |_pass|
    (array_size - 1 - _pass).times do |swap|
      next unless yield(ar[swap], ar[swap + 1]) > 0

      temp = ar[swap + 1]
      ar[swap + 1] = ar[swap]
      ar[swap] = temp
    end
  
    print ar
  end
end

# testing bubble_sort_by

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

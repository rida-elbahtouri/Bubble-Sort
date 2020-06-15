def bubble_sort(array)
    new_array=[]
    x=0
    while x<7
        x +=1
        for i in 0..(array.length-1)
            if array[i].to_i < array[i+1].to_i
                new_array.push(array[i])
            else
                new_array.push(array[i+1]) 
            end 
            
        end
        print new_array
    end
   
end

bubble_sort([1,2,4,6,3,5])

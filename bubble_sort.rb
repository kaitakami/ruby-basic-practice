def bubble_sort (array)
  for i in 0..array.length - 1 do
    for j in 0..array.length - 2 - i do
      if array[j] > array[j + 1]
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2,5,3,6,7,87,2,1]) # [0, 1, 2, 2, 2, 3, 3, 4, 5, 6, 7, 78, 87]

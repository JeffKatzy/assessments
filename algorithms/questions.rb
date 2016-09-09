1. Implement merge sort. What's the bigO and why?

2 methods
  1. merge
  2. merge sort -- just calls on merge recursively

  Basecase - left with 1 number

  Merge Concept -
  1. create empty array to push numbers
  2. compare first item from LEFT and first item from RIGHT
  3. do this until either side is empty
  4. then add the remaining side to the sorted list as it will be greater
     than the last remaining element that was just added

  MergeSort Concept -
  1. call merge on a Merge Sorted left half & Merge Sorted right half

  Ruby

  array = [9, 4, 6, 3, 8, 9, 3, 3, 8, 2]

  def merge(left, right)
    sorted = []

    until left.empty? || right.empty?
      sorted << left.first <= right.first ? left.first : right.first
    end

    sorted.concat(left).concat(right)
  end  

  def merge_sort(array)
    midpoint = array.length/2
    merge(merge_sort(  array.slice(0, midpoint)), merge_sort(  array.slice(midpoint, array.length)))
  end


  sorted_array = [5, 6, 12, 13, 7, 9, 11, 15]

  def merge_sort(array)
    merge(merge_sort(array.slice(0, array.length/2), merge_sort(array.slice(array.length/2 +1, array.length))
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end


2. Write a method to reverse a string. (Hint: You cannot use reverse method)

3. Write a method to see if string is a palindrome

4. Given the root note in a sorted binary search tree, how do you find the smallest element?

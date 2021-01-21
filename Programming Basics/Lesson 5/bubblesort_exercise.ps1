# In this function we want to implement bubble sort
# Bubble sort compares two values in the array that are next to each other
# and swaps them if the left one is bigger than the right

function bubble_sort ($arrayI){
    # make a copy of $array called $sorted, this is the array we will manipulate
    

    # Create a for loop that will loop $sorted.length number of times
    # Create another for loop that will loop $sorted.length-1 number of times
    # Inside the nested loop, create an if statement that will compare the values of $sorted[$j] and $sorted[$j+1]
    # If the left one is bigger then the right, swap them, otherwise don't do anything


    

    return $sorted
}

#Do Not Touch any code below this comment

$array = 8, 65, 475, 2, 58, 36, 648, 1, 908, 5248, 24, 3, 75, 9
write-host("Array before bubble sort: " + $array)

$sortedArray = bubble_sort $array

write-host("Array after bubble sort: " + $sortedArray)

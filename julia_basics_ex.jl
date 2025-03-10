### Exercise 1

# Implement a function `ex1(a)`
# that finds the largest item in the array `a`. 
# It should return the largest item and its corresponding position in the array. 
# If there are multiple maximal elements, then the first one will be returned. 
# Assume that the array is not empty. Implement the function in the next cell. Test your implementation with the other one.
function ex1(a)
    # Initialize the maximum value and its position
    max_val = a[1]
    max_pos = 1
    # Iterate through the array
    for i in 2:length(a)
        if a[i] > max_val
            max_val = a[i]
            max_pos = i
        end
    end
    # Return tuple of (max_value, position)
    return (max_val, max_pos)
end

using Test
arr = [3,4,7,3,1,7,2]
@test ex1(arr) == (7,3)

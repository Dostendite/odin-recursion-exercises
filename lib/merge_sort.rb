# if only one number
#     Quit
# else
#     Sort left half
#     Sort right half
#     Merge two halves

# 1. Select the entire array
# 2. Split the selected array (as evenly as possible)

# 3. Select the left subarray
# 3.2 Split the selected array (as evenly as possible)

# 3. Select the left subarray
# 3.2 Split the selected array (as evenly as possible)

# 4. An array of length 1 cannot be split, ready for merge
# 4. An array of length 1 cannot be split, ready for merge

# 5. Merge selected arrays back together, in sorted order
# 6. Select the minimum of the two values
# 7. Add the selected value to the sorted array

# 8. When one list becomes empty, 
# copy all values from the remaining array into the sorted array

# 9. Add the selected value to the sorted array
# 10. Finished merging


def merge_sort(ary)
    if ary.length == 1
        ary
    else
        middle = ary.length/2
        left_half = ary[0...middle]
        right_half = ary[middle..]

        left_half = merge_sort(left_half)
        right_half = merge_sort(right_half)

        result = []

        total_length = left_half.length + right_half.length

        until result.length == total_length
            if left_half[0].nil?
                result += right_half
            elsif right_half[0].nil?
                result += left_half
            else
                if left_half[0] < right_half[0]
                    result << left_half.shift
                else
                    result << right_half.shift
                end
            end
        end

        result
    end
end

print "#{merge_sort([3, 2, 1, 13, 8, 5, 0, 1])}\n"
print "#{merge_sort([105, 79, 100, 110])}\n"        

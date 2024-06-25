def merge_sort(ary)
  if ary.length == 1
    ary
  else
    middle = ary.length / 2
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
        result << if left_half[0] < right_half[0]
                    left_half.shift
                  else
                    right_half.shift
                  end
      end
    end
    result
  end
end

print "#{merge_sort([3, 2, 1, 13, 8, 5, 0, 1])}\n"
print "#{merge_sort([105, 79, 100, 110])}\n"

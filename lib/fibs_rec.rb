def fibs_rec(n, ary=[0])
    # Return ary with n fibonacci numbers
    if !ary.include?(1) && n > 1
        ary << 1
        n -= 1
    end

    if n <= 1
        ary
    else
        ary << ary[-1] + ary[-2]
        fibs_rec(n-1, ary)
    end
end

print "#{fibs_rec(1)}\n"
print "#{fibs_rec(3)}\n"
print "#{fibs_rec(8)}\n"

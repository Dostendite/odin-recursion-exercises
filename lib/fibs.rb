def fibs(n, ary=[])
    a = 0
    b = 1

    if n > 0
        if n > 1
            ary << a
            ary << b
        else
            ary << a
        end
    end

    (n-2).times do
        c = a + b
        a = b
        b = cz
        ary << c
    end
    ary
end

# Tests
puts "fibs(0) -> #{fibs(0)}"
puts "fibs(1) -> #{fibs(1)}"
puts "fibs(2) -> #{fibs(2)}"
puts "fibs(5) -> #{fibs(5)}"
puts "fibs(8) -> #{fibs(8)}"
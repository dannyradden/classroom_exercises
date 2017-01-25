def prime?(number)

    i = 2

    if number == 2 
        puts "Number is prime"
        abort
    end
    
    if number < 2
        puts "Number is not prime"
        abort
    end

    while number % i != 0
        if number == (i + 1)
            puts "Number is prime"
            abort
        else
            i += 1
        end
    end 
        puts "Number is not prime"
end

test = gets.to_i
prime?(test)
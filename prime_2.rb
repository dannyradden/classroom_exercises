def find_primes(quantity)
  count = 0
  number_check = 2
  i = 2
  until count == quantity
    while number_check % i != 0 && count != quantity
      if number_check == (i + 1)
        count += 1
        puts number_check
        number_check += 1
        i = 2
      else
        i += 1
      end
    end
    if number_check == 2
      puts number_check
      count += 1
    end
    number_check += 1
  end
end

test = gets.to_i
find_primes(test)

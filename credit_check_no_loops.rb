require 'pry'
card_number = "4929735477250543"

card_valid = false

number_15 = card_number[15].to_i
number_13 = card_number[13].to_i
number_11 = card_number[11].to_i
number_9 = card_number[9].to_i
number_7 = card_number[7].to_i
number_5 = card_number[5].to_i
number_3 = card_number[3].to_i
number_1 = card_number[1].to_i

number_14 = card_number[14].to_i * 2
number_14 = (number_14 % 10) + 1 if number_14 >= 10

number_12 = card_number[12].to_i * 2
number_12 = (number_12 % 10) + 1 if number_12 >= 10

number_10 = card_number[10].to_i * 2
number_10 = (number_10 % 10) + 1 if number_10 >= 10

number_8 = card_number[8].to_i * 2
number_8 = (number_8 % 10) + 1 if number_8 >= 10

number_6 = card_number[6].to_i * 2
number_6 = (number_6 % 10) + 1 if number_6 >= 10

number_4 = card_number[4].to_i * 2
number_4 = (number_4 % 10) + 1 if number_4 >= 10

number_2 = card_number[2].to_i * 2
number_2 = (number_2 % 10) + 1 if number_2 >= 10

number_0 = card_number[0].to_i * 2
number_0 = (number_0 % 10) + 1 if number_0 >= 10

sum = number_0 + number_1 + number_2 + number_3 + number_4 + number_5 + number_6 + number_7 + number_8 + number_9 + number_10 + number_11 + number_12 + number_13 + number_14 + number_15

#binding.pry

card_valid = true if sum % 10 == 0

puts card_valid == true ? "The number is valid!" : "The number is invalid!"

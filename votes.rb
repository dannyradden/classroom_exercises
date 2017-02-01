vote_array = [["Ilana", 2468], ["Lauren", 9872], ["Beth", 4521]]

high_votes = []
message = ""

vote_array.each do |nest|
  high_votes = high_votes << nest if nest[1] > 3000
end

length = high_votes.length

high_votes.each_with_index do |x, id|
  message += "#{x[0]} (#{x[1]}) " if id < length - 1 && length == 2
  message += "#{x[0]} (#{x[1]}), " if id < length - 1 && length > 2
  if id == length - 1
    message += "and #{x[0]} (#{x[1]}) have more than 3000 votes."
  end
end

puts message

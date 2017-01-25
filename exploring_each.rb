require 'pry'

[1, 2, 3, 4, 5, 6].each do |number|
  if number.odd?
    binding.pry
    puts number
  end
end

require 'pry'

class ScopeLesson

  def print_doubled_value(n)
    @x = n
    puts n + x
  end

  def bob
    @x
  end
end




binding.pry
""

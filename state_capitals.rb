### State Capitals
#
# You have 2 hashes, one which maps state names to state abbreviations,
# and one which maps state abbreviations to their capital:
#
# ```
# states = {"Oregon" => "OR",
#           "Alabama" => "AL",
#           "New Jersey" => "NJ",
#           "Colorado" => "CO"}
#
# capitals = {"OR" => "Salem",
#             "AL" => "Montgomery",
#             "NJ" => "Trenton",
#             "CO" => "Denver"}
# ```
#
# * Level 1: Write some code which given a state name ("Oregon") outputs
#   its capital ("Salem")
# * Level 2: Handle the case when a state's information is not known by
#   returning "Unknown"
# * Level 3: Now let's go the other way. Given a capital name ("Denver"),
#   return the state name for which it is the capital ("Colorado")

class StateCapitals
  attr_reader :states, :capitals, :abbr, :cap, :state
  attr_accessor :choice

  def initialize
    @states = { 'Oregon' => 'OR',
                'Alabama' => 'AL',
                'New Jersey' => 'NJ',
                'Colorado' => 'CO' }

    @capitals = { 'OR' => 'Salem',
                  'AL' => 'Montgomery',
                  'NJ' => 'Trenton',
                  'CO' => 'Denver' }
  end

  def run
    @choice = gets.chomp
    does_choice_exist
  end

  def does_choice_exist
    if states.key?(choice) || capitals.value?(choice)
      cap_or_state
    else
      puts 'Unknown'
    end
  end

  def cap_or_state
    if states.key?(choice)
      its_a_state
    else
      its_a_capital
    end
  end

  def its_a_state
    @abbr = states[choice]
    find_cap
  end

  def find_cap
    puts @cap = capitals[abbr]
  end

  def its_a_capital
    @abbr = capitals.key(choice)
    find_state
  end

  def find_state
    puts @state = states.key(abbr)
  end
end

givecap = StateCapitals.new
givecap.run

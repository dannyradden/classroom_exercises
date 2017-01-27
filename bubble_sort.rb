require 'pry'

class BubbleSort
  def sort(collection)
    length = collection.length
    stage = length
    until stage == 1
      i = 0
      until i == (stage - 1)
        previous = collection[i]
        current = collection[i + 1]
        if current < previous
          collection[i, 2] = collection[i, 2].reverse
        end
        i += 1
      end
      stage -= 1
    end
    collection
  end
end

sorter = BubbleSort.new

puts sorter.sort(["d", "b", "a", "c", "f", "e"])

collection[i, i + 1] = collection[i + 1, i]

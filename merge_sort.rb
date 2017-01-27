class MergeSort
  def sort(collection)
    i = 1
    a = []
    b = []
    x = []
    final = []
    length = collection.length.to_f
    marker = 0
    a = collection.shift(i)
    b = collection.shift(i)
    while i <= (length / 2).ceil
      if a.length == 0 && b.length == 0 && marker == 1
        marker = 0
        a = []
        b = []
        a = collection.shift(i)
        b = collection.shift(i)
      elsif a.length == 0 && b.length == 0 && marker == 0
        i = i*2
        collection = x
        final = x[0..collection.length]
        marker = 1
        a = []
        b = []
        x = []
        a = collection.shift(i)
        b = collection.shift(i)
      elsif a.length == 0
        x << b.shift
        marker = 1
      elsif b.length ==0
        x << a.shift
        marker = 1
      elsif a[0] < b[0]
        x << a.shift
        marker = 1
      else
        x << b.shift
        marker = 1
      end
    end
    final
  end
end


sorter = MergeSort.new

puts sorter.sort(["g", "e", "c", "a", "h", "f", "d", "b"])

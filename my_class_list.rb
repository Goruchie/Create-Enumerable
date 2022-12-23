require_relative 'my_enumerable'

# MyList class
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    count = 0
    while count < @list.length
      yield(@list[count])
      count += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }
list.all? { |e| e > 5 }

list.any? { |e| e == 2 }
list.any? { |e| e == 5 }

list.filter(&:even)
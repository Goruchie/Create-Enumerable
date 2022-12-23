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

puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }

puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }

puts list.filter(&:even?)

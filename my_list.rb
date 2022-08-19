$LOAD_PATH << '.'
require 'my_enumerable'
# # list = %w[ant bear cat]
# # %w[ant bear cat].all? { |word| word.length >= 3 }

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
list.all? {|e| e < 5} # true
list.all? {|e| e > 5} # false
list.all? #false

# Test #any?
list.any? {|e| e == 2} # true
list.any? {|e| e == 5} # false
list.any? # true

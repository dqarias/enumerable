$LOAD_PATH << '.'
require  'my_enumerable'
# # list = %w[ant bear cat]
# # %w[ant bear cat].all? { |word| word.length >= 3 }

class MyList
    include MyEnumerable
    attr_accessor :list

    def initialize(*list)
      @list = list
    end

    def each
      @list
    end

end

list = MyList.new(1, 2, 3, 4)

#print list.create_list
print list.all?
print list.all? {|e| e < 5} #true
print list.all? {|e| e > 5} #false

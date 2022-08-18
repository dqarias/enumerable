$LOAD_PATH << '.'
require  'my_enumerable'
# # list = %w[ant bear cat]
# # %w[ant bear cat].all? { |word| word.length >= 3 }

class MyList
    include MyEnumerable

    def initialize(*list)
    @list = list
    end

    def create_list
        array = []
        @list.each { |member| array.push(member) }
    end
end

list = MyList.new(1, 2, 3, 4)

print list.create_list

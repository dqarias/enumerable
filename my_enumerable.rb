module MyEnumerable
  def all?
    if block_given?
      all = []
      each { |i| all.push(yield(i)) }
      if all.include?(false)
        puts false
      else
        puts true
      end
    else
      puts false
    end
  end

  def any?
    if block_given?
      any = []
      each { |i| any.push(yield(i)) }
      if any.include?(true)
        puts true
      else
        puts false
      end
    else
      puts true
    end
  end

  def filter
    block_filter = []
    each { |i| block_filter.push(i) if yield(i) }
    puts block_filter
  end
end

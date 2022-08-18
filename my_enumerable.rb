module MyEnumerable
  def all?
   puts each { |i| yield(i) } ? true : false
  end

  def any?

  end

  def filter?

  end

end

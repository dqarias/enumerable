module MyEnumerable
  def all?
    each {|i| yield(i)}
  end

  def any?

  end

  def filter?

  end

end

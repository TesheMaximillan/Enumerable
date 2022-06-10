module MyEnumerable
  def all?
    each { |list| return false unless yield(list) }
    true
  end

  def any?
    each { |list| return true if yield(list) }
    false
  end

  def filter
    filtered = []
    each { |list| filtered << list if yield(list) }
    filtered
  end
end

class MyList
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |item| yield(item) if block_given? }
  end

  def show
    @list
  end
end

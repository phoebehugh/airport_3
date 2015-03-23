class Airport
  DEFAULT_CAPACITY = 10

  attr_reader :capacity

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def slots
    capacity
  end

  def empty?
    true
  end

end
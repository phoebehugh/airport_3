class Airport
  DEFAULT_CAPACITY = 10

  attr_reader :capacity

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end
end
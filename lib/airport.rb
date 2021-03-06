class Airport
  DEFAULT_CAPACITY = 10

  attr_reader :capacity

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @hangar = []
  end

  def slots
    capacity
  end

  def planes_count
    @hangar.count
  end

  def empty?
    true
  end

  def park(something)
    something.land!
    @hangar << something # these are totally separate!
  end

end

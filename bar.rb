require ("pry")

class Bar

  attr_reader :name, :rooms, :till

  def initialize(name, rooms)

    @name = name
    @rooms = rooms
    @till = 0

  end

  def add_to_till(amount)

    @till += amount

  end

end

require ("pry")

class Bar

  attr_reader :name, :rooms, :till, :guest_spending

  def initialize(name, rooms)

    @name = name
    @rooms = rooms
    @till = 0
    @guest_spending = Hash.new{}

  end

  def add_to_till(amount, guest)

    @till += amount

    name = guest.name
    @guest_spending[name] = amount

  end



end

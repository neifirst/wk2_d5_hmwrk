require ("pry")

class Bar

  attr_accessor :name, :rooms, :till, :guest_spending, :guest_list

  def initialize(name, rooms)

    @name = name
    @rooms = rooms
    @till = 0
    @guest_spending = Hash.new{}
    @guest_list = []

  end

  def add_to_till(amount, guest)

    @till += amount

    name = guest.name
    @guest_spending[name] = amount

  end



  def corrupt_police_raid()

    x = Random.new.rand(1000..9000)
    @till -= x
    n = Random.new.rand(0..@guest_list.length)
    @guest_list.delete_at(n)

  end



end

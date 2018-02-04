require ("pry")

class Bar

  attr_reader :name, :rooms, :till, :guest_spending

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



  # # Bah! Corrupt police raid - nearly works!

  # def add_guests_to_list(guest)
  #
  #   @guest_list << guest
  #
  # end


  # def corrupt_police_raid(haul)
  #
  #   @till -= haul
  #   n = Random.new.rand(0..2)
  #   @guest_list.delete_at(n)
  #
  # end



end

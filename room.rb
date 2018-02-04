require ("pry")

class Room

  attr_accessor :guests, :capacity, :songs

  def initialize(capacity)

    @guests = []
    @capacity = capacity
    @songs = []

  end

  def checkin_guest(guest)

    @guests << guest

  end


  # def checkin_guest(guest)
  #
  #
  #   while @guests.length < @capacity
  #     @guests << guest
  #   end
  #
  #
  #     # if @guests.count <= @capacity
  #     #   @guests << guest
  #     # end
  #
  # end

  # def checkout_guest(guest)
  #
  #   @guests.delete(guest)
  #
  # end



end

require ("pry")

class Room

  attr_reader :guests, :capacity, :songs

  def initialize(guests, capacity, songs)

    @guests = guests
    @capacity = capacity
    @songs = songs

  end

end

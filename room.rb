require ("pry")

class Room

  attr_accessor :guests, :capacity, :songs

  def initialize(capacity)

    @guests = []
    @capacity = capacity
    @songs = []

  end

  def checkin_guest(guest)

    if @guests.count < @capacity
      @guests << guest
    else
      return "Sorry, room full!"
    end

  end


  def checkout_guest(guest)

    @guests.delete(guest)

  end

  def add_song(song)

    @songs << song

  end

  def remove_song(song)

    @songs.delete(song)

  end



end

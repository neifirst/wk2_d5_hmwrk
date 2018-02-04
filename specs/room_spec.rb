require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


class TestRoom < MiniTest::Test

  def setup


    @song1 = Song.new("Sexy And I Know It", "LMFAO")

    @song2 = Song.new("Rasputin", "Boney M")

    @song3 = Song.new("Gay Bar", "Electric Six")

    @song4 = Song.new("Baby Got Back", "Sir Mix-A-Lot")

    @song5 = Song.new("Don't Stop Me Now", "Queen")

    @song6 = Song.new("La Bamba", "Richie Valens")


    @playlist = [@song1, @song2, @song3, @song4, @song5, @song6]


    @guest1 = Guest.new("Jeff Bridges")
    @guest2 = Guest.new("Kevin Bacon")
    @guest3 = Guest.new("Sigourney Weaver")


    @room1 = Room.new(2)

    @room2 = Room.new(40)

    @room3 = Room.new(20)


  end

  def test_get_room_guests

    assert_equal([], @room1.guests)

  end


  def test_get_room_capacity

    assert_equal(2, @room1.capacity)

  end


  def test_get_room_songs

    assert_equal([], @room1.songs)

  end

  def test_checkin_guest

    @room1.checkin_guest(@guest1)

    assert_equal("Jeff Bridges", @room1.guests[-1].name)

  end

  def test_checkin_guest__two_guests

    @room1.checkin_guest(@guest1)
    @room1.checkin_guest(@guest2)

    assert_equal("Kevin Bacon", @room1.guests[-1].name)


  end

  def test_checkin_guest__no_room

    @room1.checkin_guest(@guest1)
    @room1.checkin_guest(@guest2)
    @room1.checkin_guest(@guest3)

    assert_equal("Kevin Bacon", @room1.guests[-1].name)


  end

  # def test_checkout_guest
  #
  #   @room1.checkin_guest(@guest1)
  #   @guests.delete(@guest1)
  #   assert_equal(nil, @room1.guests[-1])
  #
  # end




end

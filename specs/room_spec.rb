require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")
require_relative("../song.rb")


class TestRoom < MiniTest::Test

  def setup

    @song1 = Song.new("Sexy And I Know It", "LMFAO")

    @song2 = Song.new("Rasputin", "Boney M")

    @song3 = Song.new("Gay Bar", "Electric Six")

    @song4 = Song.new("Baby Got Back", "Sir Mix-A-Lot")

    @song5 = Song.new("Don't Stop Me Now", "Queen")

    @song6 = Song.new("La Bamba", "Richie Valens")

    @playlist = [@song1, @song2, @song3, @song4, @song5, @song6]




    @room1 = Room.new([], 20, @playlist)

    @room2 = Room.new([], 40, @playlist)

    @room3 = Room.new([], 10, @playlist)


  end

  def test_get_room_guests

    assert_equal([], @room1.guests)

  end


  def test_get_room_capacity

    assert_equal(20, @room1.capacity)

  end


  def test_get_room_songs

    assert_equal(@playlist, @room1.songs)

  end









end

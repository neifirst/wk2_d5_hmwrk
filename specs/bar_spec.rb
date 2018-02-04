require("minitest/autorun")
require("minitest/rg")

require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class TestBar < MiniTest::Test

  def setup


    @room1 = Room.new([], 20, [])

    @room2 = Room.new([], 40, [])

    @room3 = Room.new([], 2, [])

    rooms = [@room1, @room2, @room3]

    @bar = Bar.new("Jeff's Happy Karaoke Bar", rooms)

  end


  def test_get_bar_name

    assert_equal("Jeff's Happy Karaoke Bar", @bar.name())

  end

  def test_get_rooms

    assert_equal([@room1, @room2, @room3], @bar.rooms())

  end

  def test_add_guest

    guest_name = "Jeff Bridges"
    room_number = 1

    assert_equal("Jeff Bridges", @room1.guests())

  end

  end

require("minitest/autorun")
require("minitest/rg")

require_relative("../bar.rb")
require_relative("../room.rb")


class TestBar < MiniTest::Test

  def setup

    @room1 = Room.new([], 20, [])
    @room2 = Room.new([], 40, [])
    @room3 = Room.new([], 10, [])

    rooms = [@room1, @room2, @room3]

    @bar = Bar.new("Jeff's Happy Karaoke Bar", rooms)

  end


  def test_get_bar_name

    assert_equal("Jeff's Happy Karaoke Bar", @bar.name())

  end

  def test_get_rooms

    assert_equal([@room1, @room2, @room3], @bar.rooms())

  end

  end

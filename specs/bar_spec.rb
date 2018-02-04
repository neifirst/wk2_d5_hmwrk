require("minitest/autorun")
require("minitest/rg")

require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class TestBar < MiniTest::Test

  def setup


    @room1 = Room.new(2)

    @room2 = Room.new(40)

    @room3 = Room.new(20)

    rooms = [@room1, @room2, @room3]

    @guest1 = Guest.new("Jeff Bridges", 50, @song1)
    @guest2 = Guest.new("Kevin Bacon", 25, @song3)
    @guest3 = Guest.new("Sigourney Weaver", 100, @song4)

    @bar = Bar.new("Jeff's Happy Karaoke Bar", rooms)


  end


  def test_get_bar_name

    assert_equal("Jeff's Happy Karaoke Bar", @bar.name())

  end

  def test_get_rooms

    assert_equal([@room1, @room2, @room3], @bar.rooms())

  end

  def test_get_till

    assert_equal(0, @bar.till())

  end

  def test_add_to_till

    amount = 5
    guest = @guest1

    @bar.add_to_till(amount, guest)

    assert_equal(5, @bar.till())

    assert_equal({"Jeff Bridges"=>5}, @bar.guest_spending)


  end






end

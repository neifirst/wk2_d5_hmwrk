require("minitest/autorun")
require("minitest/rg")

require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class TestBar < MiniTest::Test

  def setup

    # sexy = Song.new("Sexy And I Know It", "LMFAO")
    #
    # rasputin = Song.new("Rasputin", "Boney M")
    #
    # gay_bar = Song.new("Gay Bar", "Electric Six")
    #
    # baby = Song.new("Baby Got Back", "Sir Mix-A-Lot")
    #
    # dont = Song.new("Don't Stop Me Now", "Queen")
    #
    # bamba = Song.new("La Bamba", "Richie Valens")
    #
    # mplaylist = {
    #
    #   playlist1: [
    #     sexy, rasputin
    #   ],
    #
    #   playlist2: [
    #     baby, dont
    #   ],
    #
    #   playlist3: [
    #     bamba, gay_bar
    #   ]
    # }
    #
    @room1 = Room.new([], 20, mplaylist[:playlist1])

    @room2 = Room.new([], 40, mplaylist[:playlist2])

    @room3 = Room.new([], 10, mplaylist[:playlist3])

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

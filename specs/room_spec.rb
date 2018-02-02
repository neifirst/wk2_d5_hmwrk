require("minitest/autorun")
require("minitest/rg")

require_relative("../room.rb")


class TestRoom < MiniTest::Test

  def setup

    @room1 = Room.new([], 20, [])

  end

  def test_get_room_guests

    assert_equal([], @room1.guests)

  end


end

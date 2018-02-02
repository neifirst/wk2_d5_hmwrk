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


  def test_get_room_capacity

    assert_equal(20, @room1.capacity)

  end


  def test_get_room_songs

    assert_equal([], @room1.songs)

  end




end

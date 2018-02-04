require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../bar.rb")
require_relative("../room.rb")


class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Jeff Bridges", 50)

    @room1 = Room.new(2)

    @room2 = Room.new(40)

    @room3 = Room.new(20)

    rooms = [@room1, @room2, @room3]

    @bar = Bar.new("Jeff's Happy Karaoke Bar", rooms)

  end



  def test_get_guest_name

    assert_equal("Jeff Bridges", @guest1.name)

  end

  def test_get_guest_cash

    assert_equal(50, @guest1.cash)

  end

  def test_pay_fee

    amount = 5

    @guest1.pay_fee(amount)

    assert_equal(45, @guest1.cash)

  end

  def test_pay_fee_to_bar

    amount = 5

    @guest1.pay_fee(amount)
    @bar.add_to_till(amount)

    assert_equal(45, @guest1.cash())
    assert_equal(5, @bar.till())

  end


end

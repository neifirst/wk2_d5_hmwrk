require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")


class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Jeff Bridges", 50)

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


end

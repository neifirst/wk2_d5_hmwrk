require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")


class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Jeff Bridges")

  end

  def test_get_guest_name

    assert_equal("Jeff Bridges", @guest1.name)

  end


end

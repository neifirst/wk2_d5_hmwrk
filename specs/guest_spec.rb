require("minitest/autorun")
require("minitest/rg")

require_relative("../guest.rb")
require_relative("../bar.rb")
require_relative("../room.rb")
require_relative("../song.rb")


class TestGuest < MiniTest::Test

  def setup

    @song1 = Song.new("Sexy And I Know It", "LMFAO")

    @song2 = Song.new("Rasputin", "Boney M")

    @song3 = Song.new("Gay Bar", "Electric Six")

    @song4 = Song.new("Baby Got Back", "Sir Mix-A-Lot")

    @song5 = Song.new("Don't Stop Me Now", "Queen")

    @song6 = Song.new("La Bamba", "Richie Valens")

    @song7 = Song.new("My Heart Will Go On", "Celine Dion")


    @guest1 = Guest.new("Jeff Bridges", 50, @song1)
    @guest2 = Guest.new("Shia LeBeouf", 4, @song7)


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


  def test_pay_fee__can_pay

    amount = 5

    @guest1.pay_fee(amount)

    assert_equal(45, @guest1.cash)

  end


  def test_pay_fee__cant_pay

    amount = 5

    @guest2.pay_fee(amount)

    assert_equal("You're too poor!", @guest2.pay_fee(amount))

  end


  def test_pay_fee_to_bar

    amount = 5

    @guest1.pay_fee(amount)
    @bar.add_to_till(amount)

    assert_equal(45, @guest1.cash())
    assert_equal(5, @bar.till())

  end


  def test_get_fave_song

    assert_equal("Sexy And I Know It", @guest1.fave_song.title())

  end





end

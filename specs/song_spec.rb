require("minitest/autorun")
require("minitest/rg")

require_relative("../song.rb")


class TestSong < MiniTest::Test

  def setup

    @song1 = Song.new("Sexy And I Know It", "LMFAO")

  end


  def test_get_song_title

    assert_equal("Sexy And I Know It", @song1.title())

  end

  def test_song_artist

    assert_equal("LMFAO", @song1.artist())

  end



end

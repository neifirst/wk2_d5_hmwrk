require ("pry")

class Guest

  attr_reader :name, :cash, :fave_song

  def initialize(name, cash, fave_song)

    @name = name
    @cash = cash
    @fave_song = fave_song


  end

  def pay_fee(amount)

    if @cash >= amount
      @cash -= amount
    else
      return "You're too poor!"
    end

  end

  def check_for_fave(playlist)

    if playlist.include?(@fave_song)
      return "woo"
    else
      return "boo"
    end

  end





end

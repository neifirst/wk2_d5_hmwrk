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





end

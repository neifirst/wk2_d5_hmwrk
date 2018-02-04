require ("pry")

class Guest

  attr_reader :name, :cash

  def initialize(name, cash)

    @name = name
    @cash = cash

  end

  def pay_fee(amount)

    @cash -= amount

  end

end

class Customer

  attr_reader :cus_name, :age

  def initialize(cus_name, wallet, age)
    @cus_name = cus_name
    @wallet = wallet
    @age = age
    @tray = []
  end

  def wallet_content
    return @wallet
  end

  def tray_content
    return @tray.count
  end

  def has_money?(price)
    return  @wallet >= price
  end

  def pay_money(price)
    if has_money?(price)
      @wallet -= price
      return true
    end
  end



end

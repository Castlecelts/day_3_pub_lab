class Customer

  attr_reader :cus_name

  def initialize(cus_name, wallet)
    @cus_name = cus_name
    @wallet = wallet
    @tray = []
  end

  def wallet_content
    return @wallet
  end

  def tray_content
    return @tray.count
  end

  def pay_money(price)
    if has_money?(price)
      @wallet -= price
    end
  end

  def has_money?(price)
    return  @wallet >= price
  end



end

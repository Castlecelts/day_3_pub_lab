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

end

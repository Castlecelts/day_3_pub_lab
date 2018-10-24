class Pub

attr_reader :pub_name

  def initialize(pub_name, till, drinks)
    @pub_name = pub_name
    @till = till
    @drinks = drinks
  end

  def till_amount
    return @till
  end

  def drinks_available
    return @drinks
  end

  def add_to_till(cost)
    @till += cost
  end



  def make_sale(price, customer)
      if customer.has_money?(price)
        customer.pay_money(price)
        add_to_till(price)
      end
  end







end

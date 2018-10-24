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


end

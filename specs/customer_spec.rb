require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../pub')
require_relative('../drink')

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("tennants", 2)
    @drink2 = Drink.new("VBL", 3)
    @drink3 = Drink.new("Cosmo", 6)
    @drink4 = Drink.new("Mojito", 6)

    @tray1 = []
    @tray2 = []

    @wallet1 = 30
    @wallet2 = 40

    @customer1 = Customer.new("James", @wallet1)
    @customer2 = Customer.new("Rebekah", @wallet2)
  end

  def test_customer_has_a_name
    expected = "James"
    actual = @customer1.cus_name
    assert_equal(expected, actual)
  end

  def test_wallet_contents
    expected = 40
    actual = @customer2.wallet_content
    assert_equal(expected, actual)
  end

end

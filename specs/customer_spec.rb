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
    @tray2 = [@drink1.name]

    @wallet1 = 4
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

  def test_tray_is_being_used
    expected = 0
    actual = @customer1.tray_content
    assert_equal(expected, actual)
  end

  def test_pay_for_drink
    expected = 34
    cost = 6
    @customer2.pay_money(cost)
    actual = @customer2.wallet_content
    assert_equal(expected, actual)
  end

  def test_has_enough_money
    expected = true
    actual = @customer1.has_money?(3)
    assert_equal(expected, actual)
  end

  def test_has_enough_money__exactly
    expected = true
    actual = @customer1.has_money?(4)
    assert_equal(expected, actual)
  end

  def test_has_enough_money__doesnt
    expected = false
    actual = @customer1.has_money?(5)
    assert_equal(expected, actual)
  end

  


end

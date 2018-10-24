require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("tennants", 2)
    @drink2 = Drink.new("VBL", 3)
    @drink3 = Drink.new("Cosmo", 6)
    @drink4 = Drink.new("Mojito", 6)

    @drinks = [@drink1, @drink2, @drink3, @drink4]

    @till = 200

    @tray1 = []
    @tray2 = [@drink1.name]

    @wallet1 = 50
    @wallet2 = 4

    @customer1 = Customer.new("James", @wallet1, 22)
    @customer2 = Customer.new("Rebekah", @wallet2, 17)

    @pub = Pub.new("Red Lion", @till, @drinks)
  end

  def test_pub_name
    expected = "Red Lion"
    actual = @pub.pub_name
    assert_equal(expected, actual)
  end

    def test_till_amount
      expected = 200
      actual = @pub.till_amount
      assert_equal(expected, actual)
    end

    def test_available_drinks_behind_bar
      expected = @drinks
      actual = @pub.drinks_available()
      assert_equal(expected, actual)
    end

    def test_drink_price
      expected = 6
      actual = @drink4.price
      assert_equal(expected, actual)
    end

    def test_add_to_till
      expected = 205
      @pub.add_to_till(5)
      actual = @pub.till_amount
      assert_equal(expected, actual)
    end

    def test_sell_to_customer__sale_ok
      expected1 = 206
      expected2 = 44

      @pub.make_sale(6, @customer1)

      actual1 = @pub.till_amount
      actual2 = @customer1.wallet_content
      assert_equal(expected1, actual1)
      assert_equal(expected2, actual2)
    end

    def test_sell_to_customer__sale_fail
      expected1 = 200
      expected2 = 4

      @pub.make_sale(6, @customer2)

      actual1 = @pub.till_amount
      actual2 = @customer2.wallet_content
      assert_equal(expected1, actual1)
      assert_equal(expected2, actual2)
    end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("tennants", 2)
    @drink2 = Drink.new("VBL", 3)
    @drink3 = Drink.new("Cosmo", 6)
    @drink4 = Drink.new("Mojito", 6)

    @drinks = [@drink1, @drink2, @drink3, @drink4]

    @till = 200

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

    def test_pub_asks_for_order
      expected = "Cosmo"
      actual = @customer2.ask_order(@drink3)
      assert_equal(expected, actual)
    end


end

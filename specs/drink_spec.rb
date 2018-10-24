require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("tennants", 2)
  end


  def test_drink_name
    expect = "tennants"
    actual = @drink.name
    assert_equal(expect, actual)
  end

  def test_drink_price
    expect = 2
    actual = @drink.price
    assert_equal(expect, actual)
  end


end

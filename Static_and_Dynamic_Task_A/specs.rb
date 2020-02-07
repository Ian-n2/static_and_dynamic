require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('./card_game.rb')
require_relative('./card.rb')

class Testpage < Minitest::Test

  def setup
    @card_game = CardGame.new
    @cards = [
    @card1 = Card.new("spades", 1),
    @card2 = Card.new("Hearts", 4)
  ]

  end

  def test_checkforAce()
    assert_equal(true, @card_game.checkforAce(@card1))
  end

def test_checkforAce__false()
  assert_equal(false, @card_game.checkforAce(@card2))
end

def test_highest_card()
  assert_equal(@card2, @card_game.highest_card(@card1, @card2))
end

def test_cards_total()
expected_result = "You have a total of 5"
actual_result = @card_game.cards_total(@cards)
  assert_equal(expected_result, actual_result)
end
end

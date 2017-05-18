class PlayingCard
  attr_reader :rank, :suit

  # initialize
  def initialize options
    # options is a hash
    @rank = options[:rank]
    @suit = options[:suit]
  end

  # returns the face value (string) as a
  # combination of rank and suit
  def face
    @rank + @suit
  end

  # returns the face value of the card (string)
  def to_s
    p face
    p self.face # self is this instance, when inside instance method
  end

  def self.celebrate # class method, call PlayingCard.celebrate
    p 'YAY'
  end

end

class CardDeck
  attr_accessor :cards
  # initialize
  def initialize shufflebool=true
    if shufflebool
      # cards should be shuffled
      @cards.shuffle!
    end
  end
end

class HandOfCards
  # initialize
end

class CardPlayer
  # initialize
end


# Driver Code
if __FILE__ == $0
  puts "This will only print if you run `ruby go_fish.rb`"
  p PlayingCard.celebrate
  # card = PlayingCard.new(rank: 'K', suit:'H')
  # puts card.to_s
  # deck = CardDeck.new
  # # # puts "cards: #{deck.cards}"
  # # # puts "cards: #{deck}"
  # # # puts "shuffled: #{deck.shuffle}"
  # # puts "one drawn card: #{deck.draw_one}"
  # # puts "two drawn cards: #{deck.draw(2)}"

  # cards1 = deck.draw(5)
  # cards2 = deck.draw(5)
  # # # puts "cards1: #{cards1.join(" ")}"
  # # # puts "cards2: #{cards2.join(" ")}"

  # h1 = HandOfCards.new(cards1)
  # h2 = HandOfCards.new(cards2)

  # puts "hand1: #{h1}"
  # puts "hand2: #{h2}"

  # p1 = CardPlayer.new(hand: h1)
  # p2 = CardPlayer.new(hand: HandOfCards.new(deck.draw(5)) )

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (before)"

  # ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  # ranks.each do |rank|
  #   print "p1, do you have any... #{rank}'s?"
  #   if p1.hand.any?(rank: rank)
  #     cards = p1.hand.take!(rank: rank)
  #     print " -- YES: [ #{ cards.join(" ") } ]\n"
  #     p2.hand.push(*cards)
  #     break
  #   end
  #   print " -- NO!\n"
  # end

  # puts "Hands: [ #{p1.hand} ], [ #{p2.hand} ] (after)"
end

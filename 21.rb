puts " Its called 21 or Blackjack...either way illegal in most states "

cards_in_hand = []
dealer_cards_in_hand = []
@gamestart = true


def get_card
  rand(1..11)
end

  cards_in_hand.push(get_card)
  

def gambler_turn
while @gamestart == true
  @gambler_card_values = 0
  puts "You have the following cards: "
  cards_in_hand.each do |card|
    puts card
    @gambler_card_values += card
  end
  puts "Card values: #{@user_card_values}"
  puts "Do you want to hit or stay (h to hit, s to stay)?"
  hit_or_stay = gets.chomp
  if hit_or_stay == 'hit me'
    new_card = get_card
    cards_in_hand.push(new_card)
    puts "This is your new card #{new_card}"
    @gambler_card_values += new_card
    puts "Your total is now: #{@user_card_values} "
  end

  if hit_or_stay == 'stay'
    dealer_turn = true
  end

end

  dealer_cards_in_hand.push(get_card)
  dealer_cards_in_hand.push(get_card)

def dealer_turn
 
  @dealer_card_values = 0
  @cards_in_hand.each do |card|
    puts card
    @dealer_card_values += card
  end
  check_win
end

def who_won  
  if @gambler_card_values > 21
     @gamestart = false
    puts "BUST"
  elsif @gambler_card_values == 21
    @gamestart = false
    puts "Winner Winner Chicken Dealer"
  elsif @gambler_card_values < @dealer_card_values
    @gamestart = false
    puts "House Always wins"
  end
end
end


puts " Its called 21 or Blackjack...either way illegal in most states "

cards_in_hand = []
dealer_cards_in_hand = []
@gamestart = true


def get_card
  rand(1..11) # Clever - JH
end

  cards_in_hand.push(get_card)
  #^^ This line doesn't need to be indented - JH

def gambler_turn
while @gamestart == true #<< The while loop should be indented since it is inside the gambler_turn method - JH
  @gambler_card_values = 0
  puts "You have the following cards: "
  cards_in_hand.each do |card|
    puts card
    @gambler_card_values += card
  end
  puts "Card values: #{@user_card_values}"
  puts "Do you want to hit or stay (h to hit, s to stay)?"
  hit_or_stay = gets.chomp
  if hit_or_stay == 'hit me' #I like this a lot, but it goes against your instructions that just ask for 'h' - JH
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
  
  #^ This empty line doesn't need to be here - JH
  @dealer_card_values = 0
  @cards_in_hand.each do |card|
    puts card
    @dealer_card_values += card
  end
  check_win # I don't see any check_win method - JH
end

def who_won  # I like this who_won method, but it doesn't seem to be used anywhere - JH
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


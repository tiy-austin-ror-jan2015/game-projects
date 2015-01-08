class War
	def initialize
	@player_one = Player.new
	@player_two = Player.new
	end

	def play 
		while @player_one.cards.count > 0 do 
		card_one = @player_one.cards.draw
		card_two = @player_two.cards.draw
		if card_one > card_two
			@player_one.score += 1
			puts "player one scored this hand"
		else
			 @player_two.score += 1
			 puts "player two scored this hand"
		end
	end
	puts "Final score Is"
	puts "--------"
	puts "Player One #{@player_one.score}"
	puts "Player Two #{@player_two.score}"
	end
end

class Player
	attr_reader :cards, :score 
	def initialize
			@cards. Deck.new
			@score = 0
	end
end

class Deck 
	attr_reader :cards
	def initialize
		@cards = Deck.new
	end

	def shuffle
		@cards = @cards.shuffle
	end

	def draw
		@cards.shift
	end
end

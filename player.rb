require_relative 'game'
class Player
	def initialize(name)
		@name = name
		@games = []
	end

	def add_game(game)
		@games << game
	end

	def play (number_rolled)
		puts "Player: #{@name}"
		puts @games


		@games.each do |game|
			if number_rolled<3
				game.down_prize
				puts "#{game.title} prize was lowered"	
			elsif number_rolled <5
				puts "#{game.title} prize does not change"
			else
			game.up_prize
			puts "#{game.title} prize was rised"
			end
			puts game
		end
		
	end
end
class Game
	
	attr_accessor :prize
	attr_accessor :title

	def initialize (title, prize=10)
		@title = title.capitalize!
		@prize = prize
	end

	def hit?
	@prize>=10 
	end

	def hit
		"Hit"	
	end

	def status
		hit? ? "Hit" : "Flop"
	end


	def up_prize
		@prize += 1
	end

	def down_prize
		@prize -= 1
	end

	def to_s
		"#{@title} cost #{@prize} (#{status})"
	end
end

if __FILE__ == $0
	game = Game.new("game of thrones",200)
	puts game.title
	puts game.prize

	7.times {game.up_prize}
	puts game.prize
end
require_relative 'player'

describe Player do 

	before do 
		@player = Player.new("Kermit")
	end


	context "playd one game" do
		before do
		  	@initial_prize = 10
			@game = Game.new("gra testowa", @initial_prize)
			@player.add_game(@game)
		end

		it "rises the prize if a high number is rolled" do
			@player.play(5)
			@game.prize.should == @initial_prize + 1
		end

			it "skips the prize if a medium number is rolled" do
			@player.play(3)
			@game.prize.should == @initial_prize
		end

			it "lowers the prize if a low number is rolled" do
			@player.play(1)
			@game.prize.should == @initial_prize - 1 
		end


	end
end

require_relative 'game'

describe Game do 

	before do 
	@initial_prize = 10
	@game = Game.new("gra testowa", @initial_prize)
	end

	it "has a capitalized title" do
		@game.title.should == "Gra testowa"
	end

	it "has an initial prize" do
			@game.prize.should == 10
	end
	
	it "has a string representation" do
	@game.to_s.should == "Gra testowa cost 10 (Hit)"
	end	

	it "increases prize by 1 when given a up prize" do
	@game.up_prize
	@game.prize.should == @initial_prize + 1
	end

	it "decreases prize by 1 when given a down prize" do
	@game.down_prize
	@game.prize.should == @initial_prize - 1
	end

context "created with a default prize" do
	before do
		@game = Game.new("gra testowa")
	end

	it "has a prize of 10 "do
		@game.prize.should == 10
	end
end


context "with prize of at least 10" do
	before do 
		@game = Game.new("gra testowa",10)
	end

	it "is a hit" do
		@game.hit?.should == true
	end

	it "has a hit status" do
		@game.status.should == "Hit"
	end
end

context "with prize of less than 10" do
	before do 
		@game = Game.new("gra testowa",9)
	end

	it "has a flop status" do
		@game.status.should == "Flop"
	end

	it "it is not a hit" do
		@game.hit?.should == false
	end
end

end
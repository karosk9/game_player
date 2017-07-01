
require_relative 'player'
game1 = Game.new("game of thrones",233)
game2 = Game.new("ruby game")
game3 = Game.new("Last game",25)

player1 = Player.new("Maraton")
player1.add_game(game1)
player1.add_game(game2)
player1.add_game(game3)
player1.play

player2 = Player.new("Karolina")
player2.add_game(game3)

game4 = Game.new("jakiś tam")
player2.add_game(game4)
player2.play
require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"

player1 = Player.new("Bart")
player2 = Player.new("Hommer")
player3 = HumanPlayer.new("Oli")

puts "-----------------------------------"

  player1.show_state
  player2.show_state
  player3.show_state

  puts "-----------------------------------"
  
  while player1.life_points > 0 && player2.life_points > 0

    player1.attacks(player2)
    if player2.life_points <= 0 || player1.life_points <= 0
      puts "Ouh pinaise!"
      break 

      else 
      player2.attacks(player1)
    end
    
    puts "-----------------------------------"

    player1.show_state
    player2.show_state
  end

  puts "-----------------------------------"
 
  player3.shearch_weapon
 
  puts "------------------------------------------------
|C'est pas complet ! Mais je compte bien revenir !      |
|Je compte bien avoir leur 'POO' dans un futur proche ! |
--------------------------------------------------------"
#binding.pry
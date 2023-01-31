require 'pry'

class Player 
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end
  
  def show_state
    puts "#{@name} à #{@life_points} points de vie !"
  end

  def gets_damage(damage_receveid)
    @life_points = life_points - damage_receveid
    if @life_points <= 0
      puts "Le joueur #{@name} à sombré dans les abyss"
    end
  end

  def attacks(attacked_player)
    @name = name
    puts "Le joueur #{@name} attaque le joueur #{attacked_player.name}"
    damage_receveid = compute_damage
    attacked_player.gets_damage(damage_receveid)
    puts "Il lui à infligé #{damage_receveid} points de dommages !"

  end

  def compute_damage
    return rand(1..6) 
  end
end
  
class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @weapon_level = 1
 
    super (name)
    @life_points = 100
  end

  def compute_damage
    return rand(1..6) * @weapon_level
  end
 def shearch_weapon
  roll = rand(1..6)
  puts "Tu à trouvé une arme de niveau #{roll}"
  if roll < @weapon_level 
    return puts "Cette arme est d'un niveaux plus petit que le tient !"
    elsif roll > @weapon_level
    puts "Elle est meilleure que ton arme actuelle : tu la prends !"
    elsif roll == @weapon_level
      puts "M@*#$.. elle n'est pas mieux que ton arme actuelle"
   end
  end
end



#binding.pry
#puts"end of file"
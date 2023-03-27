require './player.rb'

class Arena
  # 3. add a reader for both player and enemy
  # enter code here
  attr_reader :player, :enemy
  turn = 0
  ACTIONS = ["attack", "potion"]

  def initialize(player:, enemy:)
    # 2. Create an instance variable for player and enemy
    # enter code here
    @player = player
    @enemy = enemy
  end

  def start
    puts "Welcome to the Arena!"
    puts "You are fighting #{enemy.name}!"

    turn = 0
    while player.hp > 0 && enemy.hp > 0
      # 4. Implement turns. Player and Enemy will do a random action.
      # ACTIONS are: attack and use_potion
      # enter code here

      #assuming the player always go first
      do_random_action(player, enemy)
      do_random_action(enemy, player)

      puts "Your health: #{player.hp}"
      puts "#{enemy.name}'s health: #{enemy.hp}"

      turn += 1
    end

    if player.hp > 0
      puts "You win!"
    else
      puts "You lose!"
    end
  end

  private
  def attack(attacker, target)
    damage = attacker.atk - target.def
    target.hp -= damage

    puts "#{attacker.name} attacks #{target.name} for #{damage} damage!"
  end

  def do_random_action(user, target)
    case ACTIONS.sample
    when "attack"
      attack(user, target)
      
    when "potion"
      if(user.potions < 1)
        attack(user, target)
      else
        user.use_potion
      end

    else 
      puts "defend - shouldn't happen?"
    end
  end
  # 5.Challenge: Create a method where player can defend
  # Specs: Defending can make the defender's defense x1.5 in 1 turn
  # def defend(defender)
  #   defender.def *= 1.5
  # end

  # def reset_round()
  # end
end

p1 = Player.new("player 1")
e1 = Player.new("enemy 1")

g_arena = Arena.new(player: p1, enemy: e1)

g_arena.start
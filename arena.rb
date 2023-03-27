class Arena
  # 3. add a reader for both player and enemy
  # enter code here

  attr_reader :player, :enemy
  ACTIONS = ["attack", "potion", "defend"]

  def initialize(player:, enemy:)
    # 2. Create an instance variable for player and enemy
    # enter code here
    @player = player
    @enemy = enemy
  end

  def start
    puts "Welcome to the Arena!"
    puts "You are fighting #{enemy.name}!"
   
    while player.hp > 0 && enemy.hp > 0
      # 4. Implement turns. Player and Enemy will do a random action.
      # ACTIONS are: attack and use_potion
      # enter code here

puts "===START ROUND==="

      # Action of first person
        action = ACTIONS.sample
        if action == "attack"
          attack(player, enemy)
        elsif player.potions < 0
          puts "#{player.name} has no more potions so #{player.name} attacks #{enemy.name}"
          attack(player, enemy)
        else
          player.use_potion

        end
        puts "#{player.name} hp: #{player.hp}"
        puts "#{enemy.name}'s hp: #{enemy.hp}"

      # Action of second person
      action2 = ACTIONS.sample
      if action2 == "attack"
        attack(enemy, player)
      elsif action2 == "defend" &&  action == "attack"
        defend(enemy, player)
      elsif enemy.potions < 0
        puts "#{enemy.name} has no more potions so #{enemy.name} attacks #{player.name}"
        attack(enemy, player)
      else
        enemy.use_potion

      end
        puts "#{enemy.name} hp: #{enemy.hp}"
        puts "#{player.name}'s hp: #{player.hp}"
    end

    if player.hp > 0
      puts "You win!"
    else
      puts "You lose!"
    end
  end

  private

    def attack(attacker, target)
      damage = attacker.atk - target.defe
      target.hp -= damage
      puts "#{attacker.name} attacks #{target.name} for #{damage} damage!"
    end

    def defend(attacker, target)
      damage = attacker.atk - target.defe
      target.hp += damage
      puts "#{attacker.name} defends #{target.name}'s damage!"
    end



    # 5.Challenge: Create a method where player can defend
    # Specs: Defending can make the defender's defense x1.5 in 1 turn
end

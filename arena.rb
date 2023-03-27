class Arena
  # 3. add a reader for both player and enemy
  # enter code here
  attr_reader :player, :enemy
  ACTIONS = ['attack', 'use_potion']

  def initialize(player:, enemy:)
    # 2. Create an instance variable for player and enemy
    # enter code here
    @player = player
    @enemy = enemy
    
  end

  def start
    puts "Welcome to the Arena! ~#{player.name}"
    puts "You are fighting #{enemy.name}!"

    player_turn = 0
    while player.hp > 0 && enemy.hp > 0
      # 4. Implement turns. Player and Enemy will do a random action.
      # ACTIONS are: attack and use_potion
      # enter code here

      if ACTIONS.sample == 'attack'
        attacker = [atk: 20, name: player.name]
        target = [def: 5, 
                  hp: enemy.hp,
                  name: enemy.name]
        
        attack(attacker, target) 
        break

      elsif ACTIONS.sample == 'use_potion'
        player.use_potion
        break
      end

      puts "Your health: #{player.hp}"
      puts "#{enemy.name}'s health: #{enemy.hp}"

      player_turn += 1
      return if player_turn != 1
    end

    if player.hp > 0
      puts "You win!"
    else
      puts "You lose!"
    end
  end

  private

    def attack(attacker, target)

      attack = attacker[0][:atk]
      defense = target[0][:def]
      hp = target[0][:hp]

      damage = attack - defense
      hp -= damage
         
      attacker_name = attacker[0][:name]
      target_name = target[0][:name]

      enemy.hp = hp

     # puts "#{attacker.name} attacks #{target.name} for #{damage} damage!"
      puts "#{attacker_name} attacks #{target_name} for #{damage} damage!"
    end

    

    # 5.Challenge: Create a method where player can defend
    # Specs: Defending can make the defender's defense x1.5 in 1 turn
end

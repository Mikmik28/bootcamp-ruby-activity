class Arena
  attr_reader :player, :enemy # 3. add a reader for both player and enemy

  def initialize(player:, enemy:)
    @player = player # 2. Create an instance variable for player and enemy
    @enemy = enemy
  end

  def start
    puts "Welcome to the Arena!"
    puts "You are fighting #{enemy.name}!"
    while player.hp > 0 && enemy.hp > 0
      players = [player, enemy].shuffle # Shuffle the array to randomize turn order
      
      players.each do |p| # Each player takes a turn
        if p == player
          puts "Your turn!"
        else
          puts "#{enemy.name}'s turn!"
        end
        
        action = rand(2) # Randomly choose an action: attack or use potion
        
        case action
        when 0 # Attack
          attack(p, p == player ? enemy : player)
        when 1 # Use potion
          p.use_potion
        end
        
        puts "Your health: #{player.hp}"
        puts "#{enemy.name}'s health: #{enemy.hp}"
      end
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
  
  def defend(player)
    player.def *= 1.5 # Defense is multiplied by 1.5
    puts "#{player.name} defends!"
  end
end

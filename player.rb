class Player
  MAX_POTIONS_QTY = 5.freeze

  attr_accessor :name, :potions, :hp, :def, :atk
  attr_reader :crit_chance, :crit_damage

  def initialize(name)
    @name = name
    @hp = 100
    @atk = 20
    @def = 5
    @crit_chance = 5
    @crit_damage = 1.5
    @potions = MAX_POTIONS_QTY
  end

  # 1. Create a method where player can heal using potions and reduce the player's potion amount
  # Specs: Using potion can heal 15 hp
  def use_potion
    # Prevent using of potions when no more potions left. Hint: use guard clause here
    # enter code here
    return if(potions < 1)    

    self.hp += 15
    self.potions -= 1

    puts "#{name} used potions."
  end

  def attack(target)
    damage = (rand(self.crit_chance) == 1 ? self.atk * self.crit_damage : self.atk) - target.def
    target.hp -= damage

    puts "#{name} attacks #{target.name} for #{damage} damage!"   
  end

  def defend
    self.def *= 1.5

    puts "#{name} defends"
  end

  #set default stats 
  def reset_stats
    self.atk = 20
    self.def = 5
  end
end

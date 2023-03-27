class Player
  MAX_POTIONS_QTY = 5.freeze

  attr_accessor :name, :potions, :hp
  attr_reader :atk, :def

  def initialize(name)
    @name = name
    @hp = 100
    @atk = 20
    @def = 5
    @potions = MAX_POTIONS_QTY
  end
  
def heal 
  if potion > 0
    hp = hp + 15
    potions = potions - 1
  else
    puts "not enough potion"
  end
end
    
  # 1. Create a method where player can heal using potions and reduce the player's potion amount
  # Specs: Using potion can heal 15 hp
  def use_potion
    # Prevent using of potions when no more potions left. Hint: use guard clause here
    # enter code here

    puts "#{name} used potions."
  end
end

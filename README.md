# Text-based arena RPG activity

## To start the game. Run this:
Run irb in your terminal
```
load "player.rb"
load "arena.rb"

player = Player.new("John Wick")
enemy = Player.new("Marquis")

Arena.new(player: player, enemy: enemy).start
```

## Activity
0. Clone this repo to your machine and open the folder in your preferred editor

1. In `player.rb`, Define a method where player can heal using potions

2. In `arena.rb`, Create an instance variable for player and enemy

3. In `arena.rb`, Add a reader for both player and enemy

4. In `arena.rb`, Implement turns. Player and Enemy will do a random action.
ACTIONS will be: attack, and use_potion
Make sure when choosing use_potion, and when no potions left,
let the player/enemy choose another actions
HINT: use `.sample` to randomize which object to use from array
```
ARRAY.sample
```

## Bonus Challenge!!! (Only when there's an extra time)
5. Create a method where player can defend in `arena.rb`. And add it to your actions

6. add randomness for the damage like critical chance

7. Instead of doing random actions, make yourself a player!
Use `gets.chomp` to get the user's input
```
foo = gets.chomp # Inputs bar
puts foo # Output: bar
```

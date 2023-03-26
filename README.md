# Text-based arena RPG activity

0. Open `player.rb` and `arena.rb`
1. In `player.rb`, Define a method where player can heal using potions

2. In `arena.rb`, Create an instance variable for player and enemy

3. In `arena.rb`, Add a reader for both player and enemy

4. In `arena.rb`, Implement turns. Player and Enemy will do a random action.
ACTIONS will be: attack, and use_potion
Make sure when choosing use_potion, and when no potions left,
let the player/enemy choose another actions

HINTS:
- use `ARRAY.sample` to randomly choose one object inside an array

## Bonus Challenge!!! (Only when there's an extra time)
5. Create a method where player can defend in `arena.rb`.

6. add randomness for the damage like critical chance

7. Instead of doing random actions, make yourself a player!
Use `gets.chomp` to get the user's input
```
foo = gets.chomp # Inputs bar
puts foo # Output: bar
```

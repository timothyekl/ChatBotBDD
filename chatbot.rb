$stdout.sync = true

puts 'What is your name?'

name = gets.chomp
puts "Hello, #{name}!"

puts "Would you like to play a game?"

response = gets.chomp
if response =~ /yes/i
  puts <<-eod
What game would you like to play? I know:
1. Chess
2. Checkers
3. Poker
4. Falkin's Maze
5. Global Thermonuclear War
Pick a game by number.
  eod

  number = gets.chomp.to_i

  if number == 5
    puts "BOOM!"
  else
    puts "That game is boring."
  end
else
  puts "OK, goodbye."
end

exit

require 'colorize'     
require 'io/console'


# Class Players [] 

def greeting_players

    puts "Type your name player_1:"
    player_1 = gets.chomp # """
while 
    puts "Type your name player_2"
    player_2 = gets.chomp

    puts "WELCOME, #{player_1} and #{player_2}!".colorize(:red)
    input = gets.chomp
    puts "\e[H\e[2J"

    puts "Have you guys been drinking today? (y/n)"
    input = gets.chomp	
    if input == "y"
        system('clear')
        puts "Great, you are ready to play!!"
        puts "First player will be doing the first call."
        sleep 1
        return [player_1, player_2]
        # game_strategy(player_1, player_2)
    elsif input == "n"
        puts "\e[H\e[2J"
        puts "go and a get a 
        beer. See yous later"
        sleep 2
        puts "HURRY UP!!!".colorize(:red)
    else
        puts "\e[H\e[2J"
        puts "Sorry, you guys are too drunk to play!"
    end
end
def game_strategy(player_1, player_2)

    puts "HOW MANY STICKS WILL YOU SHOW THE OTHER PLAYER?"
    
    puts "#{player_1}, type the number of sticks in your hand ___:" 
    hand_player1 = STDIN.noecho(&:gets).chomp.to_i
    while hand_player1 <=0 or hand_player1 >=4
        puts "Invalid, try it again"
        hand_player1 = STDIN.noecho(&:gets).chomp.to_i
    end

    puts "#{player_2}, type the number of sticks in your hand? ___:"
    hand_player2 = STDIN.noecho(&:gets).chomp.to_i
    while hand_player2 <=0 or hand_player2 >=4
    
        puts "Invalid, try it again"
        hand_player2 = STDIN.noecho(&:gets).chomp.to_i
    end


    puts "#{player_1}, What's your guess? ___:"
    guess1 = gets.chomp.to_i
    while guess1 <=0 or guess1 >=6
        puts "Invalid, try it again"
        guess1 = gets.chomp.to_i
    end

    puts "#{player_2}, What's your guess? ___:"
    guess2 = gets.chomp.to_i
    while guess2 <=0 or guess2 >=6
        puts "Invalid, try it again"
        guess2 = gets.chomp.to_i
    end
    puts "hp_1 #{hand_player1} hp_2: #{hand_player2}"
    result_guess = hand_player1 + hand_player2
    puts "Calculating the result of #{hand_player1} + #{hand_player2} Loading..."
    sleep 1
    puts "#{result_guess}"

    if result_guess == guess1
        puts "#{player_1}, congratulations!"
    elsif result_guess == guess2
        puts "#{player_2}, congratulations!"
    else
        result_guess != guess1 or guess2
        puts "No winners"
    end

   
end

players = greeting_players

if players
    game_strategy(players[0], players[1])
end

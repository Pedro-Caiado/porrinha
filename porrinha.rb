require 'colorize'     
require 'io/console'


def checking_input(message)
    correct_input = false
    while correct_input == false
        puts message
        input = gets.chomp 
        if input == "" 
            puts "invalid"
        else
            correct_input = true
        end
    end
    return input
end

def getting_input_number(text, sticks, show=false)
    puts text
    input = STDIN.noecho(&:gets).chomp.to_i
    while input <= 0 or input >= sticks
        puts "Invalid, try it again"
        input = STDIN.noecho(&:gets).chomp.to_i
    end
    if show
        puts input
        
    end
    return input 
end

def greeting_players
    player_1 = checking_input("Enter your name player_1")
    player_2 = checking_input("Enter your name player_2")
    
    puts "WELCOME, #{player_1} and #{player_2}!".colorize(:red)
    sleep 1
    input = checking_input("Have you guys been drinking today? (y/n)")
    if input == "y"
        system('clear')
        puts "Great, you are ready to play!!"
        puts "First player will be doing the first call."
        sleep 1
        return [player_1, player_2]
    elsif input == "n"
        puts "\e[H\e[2J"
        puts "go and a get a beer. See yous later"
        sleep 2
        puts "HURRY UP!!!".colorize(:red)
    else
        puts "\e[H\e[2J"
        puts "Sorry, you guys are too drunk to play!"
    end
end


def game_strategy(player_1, player_2)
    puts "HOW MANY STICKS WILL YOU SHOW THE OTHER PLAYER?"
    
    hand_player1 = getting_input_number("#{player_1}, type the number of sticks in your hand ___:", 4)
    hand_player2 = getting_input_number("#{player_2}, type the number of sticks in your hand? ___:", 4)
    guess1 = getting_input_number("#{player_1}, What's your guess? ___:", 6, true)
    guess2 = getting_input_number("#{player_2}, What's your guess? ___:", 6, true)


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
    playing = true
    until playing == false 
        game_strategy(players[0], players[1])
        input = checking_input("Would like to play again? (y/n)")
        if input == "yes" or input == "y" 
            puts "play again"
        else
            puts "Good bye"
            playing = false
        end
    
    end

end

# # require 'gosu'

# class Game < Gosu::Windows
#     WIDTH = 640
#     WEIGHT = 480

#     def initialize 
#         super WIDTH, HEIGHT
#         self.caption = "porrinha"
#     end
# end
# Game.new.show





# def greeting_players
puts "Type your name player_1:"
player_1 = gets.chomp
puts "Type your name player_2"
player_2 = gets.chomp
puts "\e[H\e[2J"
puts "Welcome, #{player_1} and #{player_2}!"
input = gets.chomp
puts "\e[H\e[2J"
puts "Have you guys been drinking today? (yes/no)"
input = gets.chomp	
if input == "yes"
    puts "\e[H\e[2J"
    puts "Great, you are ready to play!!"
    puts "Please, decide who is going to play first. You will have 15 seconds to make decision."
    sleep 15
elsif input == "no"
    puts "\e[H\e[2J"
    puts "go and a get a beer. See yous later"
    sleep 5
    puts "HURRY UP!!!!"
else
    puts "Sorry, you guys are too drunk to play!"
    end

        #     def game_strategy ()
        # puts "ALL RIGHT! Who is playing first #{player_1} #{player_2}"?"
        # input = gets.chomp
        #  require 'io/console'
        #  print "#{player_1} has chosen number ___: "
        #  STDIN.noecho(&:gets).chomp
        # end
    



# end
# greeting_players



# random_guess.delete(pick_num.to_i)

# pc_number = randon.rand (5) + 1

puts "Hi"
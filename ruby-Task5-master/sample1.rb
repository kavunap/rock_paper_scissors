class Player
    def hand
      puts  " Please enter numbers "
      puts "0:gao"
      puts  " 1: chocki"
      puts "2:par"
    # Put the console in a wait state, and create a method in this to handle the value the player typed from the console
      # A method of outputting the values ​​of Goo, Chocki and Par at random
      player_hand = gets.chomp
      if player_hand == "0" || player_hand == "1" || player_hand == "2"
        player_hands = player_hand.to_i
      else                # For numbers other than 0, 1, 2
        puts  " Enter a number from 0 to 2 "
        Player.new.hand
      end
    end
   end
  
   class Enemy
     def hand
       return rand(3).to_i
     end
   end
  
  class Janken
    def pon(player_hand, enemy_hand)
      if enemy_hand == 0
           enemy = "gao"
        elsif enemy_hand == 1
           enemy =  " Chocki "
        elsif enemy_hand == 2
           enemy = "par"
        end
          number = (player_hand - enemy_hand + 3) % 3
        if number == 1
           puts  "The opponent's hand is #{ enemy } . You loose. "
        elsif number == 2
           puts  "The opponent's hand is #{ enemy } . You are winner. "
        else
           puts  "The opponent's hand is #{ enemy } . Aiko. "
        return "again"
        end
    end
  end
  
  player = Player.new
  enemy = Enemy.new
  janken= Janken.new
  
  # The Janken method is invoked as described below
  while janken.pon(player.hand, enemy.hand) do
    again = janken
  end
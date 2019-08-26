class Player
    def hand(hand)
      hand
    end
end

class Enemy
  def hand
	 arr=[0,1,2]
	 randomly=arr[rand(arr.count)];
	 return randomly
  end
end
	 
class Janken
	def pon(player_hand, enemy_hand)
		result=((player_hand-enemy_hand+3)%3)
		if(result==2)
			return "Win"
		elsif(result==1)
			return "Loss"
		else
			return "Draw" 
		end
	end
end


while(true) do
	puts "please select one among these following:"
	puts "0: Goo"
	puts "1: Choki"
	puts "2: Par"
	number=gets.to_i
	if(number<0 || number>2 )
		puts "out of boundary"
	else
		player = Player.new
		pr=player.hand(number)
		enemy = Enemy.new
		ene=enemy.hand
		janken = Janken.new
		if(janken.pon(pr, ene)=="Win")
			puts " it is a #{janken.pon(pr, ene)}"
			break
		elsif(janken.pon(pr, ene)=="Loss")
			puts " it is a #{janken.pon(pr, ene)}"
			break
		else
			puts " it is a #{janken.pon(pr, ene)}"
		end
	
	end
end

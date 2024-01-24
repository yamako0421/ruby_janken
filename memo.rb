def janken
   puts "じゃんけん…"
   puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
   player_hand = gets.chomp.to_i
 
   if player_hand >= 4
      puts "0~3の数字を入力してください"
      return janken 
    elsif player_hand == 3 
      puts"戦わない。"
      exit
    end
 
   hands = ["グー", "チョキ", "パー"]
   opponent_hand = rand(3)
   
   puts "ホイ!"
   puts "------------------------------"
   puts "あなた: #{hands[player_hand]}を出しました"
   puts "相手: #{hands[opponent_hand]}を出しました"
   puts "------------------------------"
 
   result = (player_hand - opponent_hand + 3) % 3
 
   case result
   when 0
     puts "あいこです"
     return janken
   when 1
     puts "あなたの勝ちです。"
     puts"------------------------------" 
     atchi_muite_hoi
   when 2
     puts "あなたの負けです。"
     atchi_muite_hoi(true)
   end
 end
 
 def atchi_muite_hoi(is_losing = false)
   puts "あっち向いて~"
   puts "0(上) 1(下) 2(左) 3(右)"
   player_direction = gets.chomp.to_i
 
   if player_direction < 0 || player_direction > 3
     puts "0~3の数字を入力してください。"
     return atchi_muite_hoi(is_losing)
   end
 
   directions = ["上", "下", "左", "右"]
   opponent_direction = rand(4)
   puts "ホイ!"
 
   puts "------------------------------"
   puts "あなた: #{directions[player_direction]}"
   puts "相手: #{directions[opponent_direction]}"
   puts "------------------------------"
 
   if player_direction == opponent_direction
     if is_losing
       puts "勝者: 相手！"
     else
       puts "勝者: あなた！"
     end
     exit
   else
     puts "続けてじゃんけんを行います。"
     janken
   end
 end
 
 loop do
   janken
 end
 
step1 = false

until step1 == true
 puts "じゃんけん..."
 step1 = true
 step2 = false

 until step2 == true
   puts "1(グー✊ ) 2(チョキ✌️ ) 3(パー🖐 )"
   your_hand_selection = gets.to_s
   if your_hand_selection.chomp == "1"
     your_hand = "グー✊ "
     step2 = true 
     step3 = false
   elsif your_hand_selection.chomp == "2"
     your_hand = "チョキ✌️ "
     step2 = true
     step3 = false
   elsif your_hand_selection.chomp == "3"
     your_hand = "パー🖐 "
     step2 = true
     step3 = false
   else
     puts "「1」か「2」か「3」で選んでね!"
     puts "-----------"
     puts "-----------"
     puts "-----------"
     step2 = true
     step3 = true
     step1 = false
    end

    until step3 == true
     puts "ポイ!"
     hand = ["グー✊ ", "チョキ✌️ ", "パー🖐 "]
     opponent_hand = hand.sample
     puts "相手:#{opponent_hand}を出しました"
     puts "あなた:#{your_hand}を出しました"

     if your_hand == "グー✊ " && opponent_hand == "チョキ✌️ "
       janken_pattern = "勝ち"
     elsif your_hand == "チョキ✌️ " && opponent_hand == "パー🖐 "
       janken_pattern = "勝ち" 
     elsif your_hand == "パー🖐 " && opponent_hand == "グー✊ "
       janken_pattern = "勝ち" 
     elsif your_hand == "グー✊ " && opponent_hand == "パー🖐 "
       janken_pattern = "負け"
     elsif your_hand == "チョキ✌️ " && opponent_hand == "グー✊ "
       janken_pattern = "負け"
     elsif your_hand == "パー🖐 " && opponent_hand == "チョキ✌️ "
       janken_pattern = "負け"
     else
       janken_pattern = "あいこ"
     end

     case janken_pattern
     when "勝ち"
       puts "-----------"
       puts "チャンス!"
       puts "-----------"
       step3 = true
       step4 = false #あっち向いてホイに進む
       step5_a = true
       step5_b = false
     when "負け"
       puts "-----------"
       puts "ピンチ..."
       puts "-----------"
       step3 = true
       step4 = false
       step5_a = false
       step5_b = true
     when "あいこ"
       puts "-----------"
       puts "あいこで..."
       step3 = true
       step4 = true
       step2 = false
     end 

      until step4 == true
       puts "あっち向いて〜"
       puts "1(↑) 2(→) 3(↓) 4(←)"
       step4 = true
       
        if step5_a == true
         your_direction = gets.to_s
         direction = ["😧↑", "🌜→", "🙃↓", "🌛←"]
         opponent_direction = direction.sample
         if your_direction.chomp == "1"
            if opponent_direction == "😧↑"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↑"
             puts "あなたの勝ちです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true 
            else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↑"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
             step1 = false
            end
         elsif your_direction.chomp == "2"
           if opponent_direction == "🌜→"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:→"
             puts "あなたの勝ちです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↑"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
             step1 = false
           end
         elsif your_direction.chomp == "3"
            if opponent_direction == "🙃↓"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↓"
             puts "あなたの勝ちです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
            else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↑"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
             step1 = false
            end
         elsif your_direction.chomp == "4"
           if opponent_direction == "🌛←"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:←"
             puts "あなたの勝ちです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:↑"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_a = true
             step1 = false
            end
         else
           puts "-----------"
           puts "「1」か「2」か「3」か「4」で選んでね!"
           puts "-----------"
           step4 = false
         end
       elsif step5_b = true
         your_direction = gets.to_s
         direction = ["↑", "→", "↓", "←"]
         opponent_direction = direction.sample
         if your_direction.chomp == "1"
           if opponent_direction == "↑"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:😧↑"
             puts "あなたの負けです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true 
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:😧↑"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
             step1 = false
           end
         elsif your_direction.chomp == "2"
           if opponent_direction == "→"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🌜→"
             puts "あなたの負けです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🌜→"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
             step1 = false
            end
         elsif your_direction.chomp == "3"
           if opponent_direction == "↓"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🙃↓"
             puts "あなたの負けです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🙃↓"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
             step1 = false
           end
         elsif your_direction.chomp == "4"
           if opponent_direction == "←"
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🌛←"
             puts "あなたの負けです!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
           else
             puts "-----------"
             puts "相手:#{opponent_direction}"
             puts "あなた:🌛←"
             puts "もう一度!"
             puts "-----------"
             puts "-----------"
             puts "-----------"
             step5_b = true
             step1 = false
           end
         else
          puts "-----------"
           puts "「1」か「2」か「3」か「4」で選んでね!"
           puts "-----------"
           step4 = false
         end
       end
      end
   end
 end
end
require_relative 'questions'
require_relative 'play'

# ==================== Execution ========================
player = Player.new     

while (player.score)
  
  currentQestion = QuestionsGen.new
  puts currentQestion.show_question
  @user_input = gets.chomp.to_i

  if (currentQestion.evaluate(@user_input))
    puts "\n YES! You are correct!\n\n"
    player.show_score
    player.game_session = true
  else
    puts "\n Seriously? No! \n\n"
    player.game_session = false

    if(player.game_session) 
      player.ply1 -= 1
    else
      player.ply2 -= 1
      player.show_score
    end

    if (player.score)
      puts "\n---- NEW TURN ----\n\n"
    end
  end
end

puts "\nPlayer 1 wins with score #{player.ply1}/3\n"
puts "\n---- Game over ----\nGood bye!\n\n\n"
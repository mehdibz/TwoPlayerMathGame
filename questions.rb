#===== Question generator ======
class QuestionsGen  
  def initialize
    @num1 = rand(1..10).to_i
    @num2 = rand(1..10).to_i
  end

  def show_question
    puts "\nWhat does #{@num1} plus #{@num2} equal?"
  end

  def evaluate(input)
    if input == (@num1 + @num2)
      return true
    else
      return false
    end
  end
end
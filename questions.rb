class Question
    attr_reader :first_num, :second_num, :ans
    def initialize
        @first_num = rand(20)
        @second_num = rand(20)
        @ans = @first_num + @second_num
    end

    def ask(player)
        puts "What does #{@first_num} + #{@second_num} = ?"
        puts @ans
        user_ans = gets.chomp.to_i
        puts user_ans
        # puts user_ans == @ans
        if user_ans == @ans
            puts "Yes, you're correct"
        else
            puts "Seriously?! No!"
            player.deduct_life
        end
    end
end
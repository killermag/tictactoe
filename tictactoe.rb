class TicTacToe
  private 
  @board = []
  
  public 
  
  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
    @toggle = false
    
  end

  def display 
    a = 0
    3.times do 
      3.times do 
        print @board[a].to_s + " "
        a += 1
      end
      puts 
    end
  end

  def get_input 
    puts "Where do you wanna mark?"
    
    begin
      input = gets.chomp.to_i
    rescue input.grep(/a-zA-z/)
      puts "Wrong input!"
      get_input
    
    else
      if  !@toggle
        unless @board[input-1] == 'X' || @board[input-1] == 'O'
          @board[input-1] = 'X' 
          @toggle = true 
        end
      elsif @toggle
        unless @board[input-1] == 'X' || @board[input-1] == 'O'
          @board[input-1] = 'O' 
          @toggle = false
        end
      end 
    end
     
  end

  def game_over? 
    if @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X'
        return true 
    elsif @board[3] == 'X' && @board[4] == 'X' && @board[5] == 'X'
        return true
    elsif @board[6] == 'X' && @board[7] == 'X' && @board[8] == 'X'
       return true
    elsif @board[0] == 'X' && @board[3] == 'X' && @board[6] == 'X'
       return true
    elsif @board[1] == 'X' && @board[4] == 'X' && @board[7] == 'X'
       return true
    elsif @board[2] == 'X' && @board[5] == 'X' && @board[8] == 'X'
       return true
    elsif @board[0] == 'X' && @board[4] == 'X' && @board[8] == 'X'
       return true
    elsif @board[2] == 'X' && @board[4] == 'X' && @board[6] == 'X'
       return true
    elsif @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O'
        return true 
    elsif @board[3] == 'O' && @board[4] == 'O' && @board[5] == 'O'
        return true
    elsif @board[6] == 'O' && @board[7] == 'O' && @board[8] == 'O'
       return true
    elsif @board[0] == 'O' && @board[3] == 'O' && @board[6] == 'O'
       return true
    elsif @board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O'
       return true
    elsif @board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O'
       return true
    elsif @board[0] == 'O' && @board[4] == 'O' && @board[8] == 'O'
       return true
    elsif @board[2] == 'O' && @board[4] == 'O' && @board[6] == 'O'
       return true
    else 
      return false
    end
  end

      


end

one = TicTacToe.new

loop do
  one.display
  one.get_input
  break if one.game_over?
end
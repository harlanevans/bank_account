# Bank Account
# User name
# be able to deposit money and withdraw

# @user_name will be the name that the app uses for the remainder

  @balance = []

  def intro
    puts 'Welcome to Henrys Bank'
    puts 'What is your name?'
    @user_name = gets.strip
    puts "Hey #{@user_name}, thanks for choosing us as your bank."
    menu
  end
  
  def menu
    puts "what would you like to do?"
      puts "1) Check account balance"
      puts "2) Add Money to Account"
      puts "3) Check account balance"
      @menu_choice = gets.to_i
      
      case @menu_choice
      when 1
        check_balance
      when 2
        add_money
      end
    end
 
      def check_balance
        puts ' --- Balance ---'
        puts "Alright, #{@user_name} you have $#{@balance.sum} left in your account."
        menu
      end
      
      def add_money
        puts "--- Add Money ---"
        puts "Alright, #{@user_name} you have $#{@balance.sum} left in your account."
        puts "How much would you like to add?"
        @add = gets.strip.to_f
        @balance << @add
        puts "Alright you have added $#{@add} to your account"
        puts "giving you $#{@balance.sum} money total."
        menu
      end

intro
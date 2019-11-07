class AppleDeals::CLI
  
  def call 
    deal_list
    deal_selection 
    goodbye 
  end 
  
  def deal_list 
    @deal = AppleDeals::Deals.today 
  end 
  
  def deal_selection
    input = nil
    while input != "exit"
    puts "Enter the number of the deal for more info"
    input = gets.strip.downcase
    case input 
    when "1"
      puts "Deal #1"
    when "2"
      puts "Deal #2"
    when "3"
      puts "Deal #3"
    when "4"
      puts "Deal #4"
    when "exit"
      puts "If you ever change your mind, text Apple Deals."
    
    end
  end
end
 
  def goodbye
    puts "Goodbye! "
  end 
  
end 
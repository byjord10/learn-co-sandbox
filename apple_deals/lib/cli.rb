class AppleDeals::CLI
  
  def call 
    puts "Current Apple Deals:"
    offer
    deal_list
    deal_selection 
    goodbye 
  end 
  
  def offer 
    puts "Would you like to know about current apple deals for this week?"
    when "Yes"
      puts deal_list
    when "No"
      puts " If you ever change your mind, text Apple Deals. "
    when "Apple Deals"
      puts deal_list
  end 
  
  def deal_list 
    puts <<-DOC..gsub/^\s*/,''
    1. New Apple iPad (10.2-Inch, Wi-Fi, 128GB) - Silver (Latest Model)
    2. Apple Watch Series 3 (GPS, 38mm) - Space Gray Aluminium Case with Black Sport Band
    3. Apple AirPods with Charging Case (Latest Model)
    4. Beats by Dr. Dre - Beats Solo³ Wireless Headphones - Rose Gold
    5. Beats by Dr. Dre - urBeats³ Earphones with Lightning Connector - Black
    6. Beats by Dr. Dre - Powerbeats³ Wireless - Black
  DOC
  end 
  
  def deal_selection
    puts "Enter the number of the deal for more info"
    while input != "exit"
    input = gets.strip
    case input 
    when "1"
      puts "Deal #1..."
    when "2"
      puts "Deal #2"
    when "3"
      puts "Deal #3"
    when "4"
      puts "Deal #4"
    when "5"
      puts "Deal #5"
    when "No"
      puts "If you ever change your mind, text Apple Deals."
      binding.pry
    end 
  end 
end 
  def goodbye
    puts "We'll be back with weekly Apple deals!"
  end 
end 

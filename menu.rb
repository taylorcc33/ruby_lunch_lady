class Menu
  def initialize (menu)
    @menu = menu
  end



  def display_menu
    puts @menu[:message]

    @menu[:options].each_with_index do |_,i|
      @menu[:options][i].each do |food, price|
        puts "#{i + 1})  #{food} $#{price}"
      end
    end
  end



  def get_selection
    input = gets.strip
    selection = Integer(input)
  end

  
end

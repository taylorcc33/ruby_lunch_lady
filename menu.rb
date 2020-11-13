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

  def display_menu_2
    @menu[:options].each_with_index do |_,i|
      @menu[:options][i].each do |food, price|
        puts "#{i + 1})  #{food} $#{price}"
      end
    end
  end

  def get_selection
    input = gets.strip
    selection = Integer(input)

    if (selection >= 1 && selection <= @menu[:options].size)
      selection = @menu[:options][selection - 1]
      return selection
    else
      puts "Your choice needs to be between 1 and #{@menu[:options].size}, please try again"
      self.get_selection
    end

    rescue ArgumentError
      puts "Your choice is not an integer. Please input an integer."
      self.get_selection
  end

end

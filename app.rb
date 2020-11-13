# main dish menu - user chooses 1
# side dish menu - user chooses several
# lunch lady repeats order
# lunch lady totals item prices and displays the total
require_relative "menu.rb"
require_relative "customer.rb"



# Welcome message and customer set up
puts "Welcome to the Ruby Diner"
puts "What's your name?"
name_input = gets.strip
customer = Customer.new(name_input)

puts "Welcome #{customer.name}. It looks like you have $#{customer.wallet}."


# Menu variables
main_dishes = {
  message: "Select a main dish:",
  options: [{'Spaghetti': 10}, {'Filet Mignon': 20}],
}

side_dishes = {
  message: "Select side dishes:",
  options: [{'French Fries': 2}, {'Salad': 3}, {'Soup': 4}]
}

# Create menus
main_menu = Menu.new(main_dishes)
side_menu = Menu.new(side_dishes)

# Run Main Menu
main_menu.display_menu
main_selection = main_menu.get_selection

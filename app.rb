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
puts ""


# Menu variables
main_dishes = {
  message: "Select a main dish:",
  options: [{'Spaghetti': 10}, {'Filet Mignon': 20}],
}

side_dishes = {
  message: "Please select 2 side dishes:",
  options: [{'French Fries': 2}, {'Salad': 3}, {'Soup': 4}]
}

# Create menus
main_menu = Menu.new(main_dishes)
side_menu = Menu.new(side_dishes)

# Run Main Menu
main_menu.display_menu
main_selection = main_menu.get_selection
customer.basket << main_selection
main_selection2 = main_selection.values
main_selection_price = main_selection2[0]
customer.wallet -= main_selection_price

# Run Side Menu 1st choice
puts ""
side_menu.display_menu
side_selection1 = side_menu.get_selection
customer.basket << side_selection1
side_selection1v2 = side_selection1.values
side_selection_price1 = side_selection1v2[0]
customer.wallet -= side_selection_price1

# Run Side Menu 2nd choice
puts ""
puts "Please select last side dish:"
side_menu.display_menu_2
side_selection2 = side_menu.get_selection
customer.basket << side_selection2
side_selection2v2 = side_selection2.values
side_selection_price2 = side_selection2v2[0]
customer.wallet -= side_selection_price2

# Print order and total amount
puts ""
puts "You ordered:"
puts main_selection.keys
puts side_selection1.keys
puts side_selection2.keys
puts ""
puts "Your order total is $#{main_selection_price + side_selection_price1 + side_selection_price2}"
puts "You have $#{customer.wallet} left in your wallet."









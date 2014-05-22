require "./classes.rb"
require "./update_method.rb"
require "./create_method.rb"
require "./list_method.rb"
require "./vote_method.rb"
include Update
include Create
include List
include Vote

@politician_list = [["POLITICIAN", "LAUREN", "REPUBLICAN"], ["POLITICIAN", "WESLEY", "DEMOCRAT"]]
@voter_list = [["VOTER", "AMY", "LIBERAL"], ["VOTER", "JORGE", "CONSERVATIVE"], ["VOTER", "ED", "TEA PARTY"], ["VOTER", "BRYAN", "LIBERAL"], ["VOTER", "JERRY", "NEUTRAL"]]

something_else = "Y" 

while something_else == "Y"
	
	def main_Menu
		puts "What would you like to do? Create, List, Update or Vote"
		main_menu_choice = gets.upcase.chomp

		if main_menu_choice == "CREATE"
			create
		elsif main_menu_choice == "LIST"
			list_all
		elsif main_menu_choice == "UPDATE"
			update_lists 
		elsif main_menu_choice == "VOTE"
			vote 
		else 
			puts "Try Again"
			main_Menu
		end
	end
	main_Menu
	puts "Would you like to do something else? Y or N"
	something_else = gets.upcase.chomp
end
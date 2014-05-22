require "./classes.rb"

module Update

	def update_lists
		puts "Is the person you are looking to update a Politician? Y or N"
		user_answer = gets.upcase.chomp
		puts "What is the name of ther person you are looking for?"
		search_term = gets.upcase.chomp

		if user_answer == "Y"
			found_array = @politician_list.rassoc(search_term)
		else
			found_array = @voter_list.rassoc(search_term)
		end

		if found_array.is_a?(Array)
			if found_array.length == 3
				p found_array
				puts "Is this the person you would like to update? Y or N"
				update_answer = gets.upcase.chomp
				if update_answer == "Y"
					i = @politician_list.index(found_array)
					j = @voter_list.index(found_array)

					if found_array[0] == "POLITICIAN"

						puts "Would you like to update the name? Y or N"
						name_update = gets.upcase.chomp

						if name_update == "Y"
							puts "What is the new name?"
							new_name = gets.upcase.chomp
						else
							new_name = found_array[1]
						end

						puts "Would you like to update the affiliation? Y or N"
						affiliation_update = gets.upcase.chomp

						if affiliation_update == "Y"
							puts "What is the new affiliation?"
							new_affiliation = gets.upcase.chomp
						else
							new_affiliation = found_array[2]
						end

						p = Politician.new(@politician_list, new_name, new_affiliation)
						p.update(i)

					elsif found_array[0] == "VOTER"

						puts "Would you like to update the name? Y or N"
						name_update = gets.upcase.chomp

						if name_update == "Y"
							puts "What is the new name?"
							new_name = gets.upcase.chomp
						else
							new_name = found_array[1]
						end

						puts "Would you like to update the affiliation? Y or N"
						affiliation_update = gets.upcase.chomp

						if affiliation_update == "Y"
							puts "What is the new affiliation?"
							new_affiliation = gets.upcase.chomp
						else
							new_affiliation = found_array[2]
						end

						v = Voter.new(@voter_list, new_name, new_affiliation)
						v.update(j)
					end

				else
					puts "Please try again"
					update_lists
				end
			else
				"Please be more specific!"
				update_lists
			end
		end
	end
end
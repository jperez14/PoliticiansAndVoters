module Vote

	def vote
		votes = @politician_list.length + @voter_list.length
		@votes_array = Array.new(@politician_list.length, 1)
		
		while votes > @voter_list.length
			@voter_list.each do |voter_element|
				p voter_element
				@vote_count = 1
				while @vote_count == 1
					case voter_element[2]
					when "TEA PARTY"
						each_politician(90)
					when "CONSERVATIVE"
						each_politician(75)
					when "NEUTRAL"
						each_politician(50)
					when "LIBERAL"
						each_politician(25)
					when "SOCIALIST"
						each_politician(10)
					else
						puts "There has been an Error!"
					end
				votes -= 1
				end
			
			end
			
		end	
		p @votes_array
		puts "TALLYING UP THE VOTES"
		sleep(1)
		puts "....................."
		sleep(1)
		puts "....................."
		sleep(1)
		puts "....................."
		sleep(1)
		puts "....................."
		
		sorted_votes_array = @votes_array.sort
		if sorted_votes_array[-1] == sorted_votes_array[-2]
			puts "There has been a TIE, no winner therefore ANARCHY!!!!"
		else	
			winner = @votes_array.each_with_index.max
			puts "#{@politician_list[winner[1]][1]} is the winner and will hopefully not mess up the whole country"
		end

	end
	def each_politician(percentage)
		@politician_list.each do |politician_element|
			p politician_element
			if politician_element[2] == "REPUBLICAN"
				if rand(101) < percentage
					@vote_count -= 1
					@votes_array[@politician_list.index(politician_element)] += 1
					return
				end
			elsif politician_element[2] == "DEMOCRAT"
				if rand(101) < (100 - percentage)
					@vote_count -= 1 
					@votes_array[@politician_list.index(politician_element)] +=1
					return
				end
			else
				puts "No Vote"
				@vote_count -= 1

			end
		end
	end
end

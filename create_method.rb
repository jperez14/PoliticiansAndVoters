require "./classes.rb"

module Create

	def create
		politician_afffiliations = ["DEMOCRAT", "REPUBLICAN"]
		voter_affiliation = ["TEA PARTY", "CONSERVATIVE", "NEUTRAL", "LIBERAL", "SOCIALIST"]

		puts "What would you like to create? Politician or Person"
		pol_or_per = gets.upcase.chomp

		if pol_or_per == "POLITICIAN"
			puts "What is the Politician's Name?"
			politician_name = gets.upcase.chomp
			puts "WHat is the Politician's Party? #{politician_afffiliations}"
			politician_party = gets.upcase.chomp
			if politician_afffiliations.include? politician_party
				p = Politician.new(@politician_list, politician_name, politician_party)
				p.create
			else
				puts "Please try again"
				create		
			end

		elsif pol_or_per == "PERSON"
			puts "What is the Voter's Name?"
			voter_name = gets.upcase.chomp
			puts "What is the Voter's Party Affiliation? #{voter_affiliation}"
			voter_party = gets.upcase.chomp
			if voter_affiliation.include? voter_party
				v = Voter.new(@voter_list, voter_name, voter_party)
				v.create
			else
				puts "Please try again"
				create
			end
		else
			puts "Try Again"
			create 
	 	end
	end

end
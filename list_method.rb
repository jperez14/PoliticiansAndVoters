module List

	def list_all
		puts "LIST OF POLITICIANS"
		puts @politician_list.map.with_index{|i, j| "#{j} #{i}"}
		puts "LIST OF VOTERS"
		puts @voter_list.map.with_index{|i, j| "#{j} #{i}"}
	end
end



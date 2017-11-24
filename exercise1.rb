ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]
# Comparing 3 results to see which is bigger
# Entry1, smudge is 1st, smudge gets 3 points, tigger is 2nd, he gets 2points
names = {'Smudge' => 0 ,'Tigger' => 0,'Simba' => 0}
ballots.each do |vote|
	names.each do |name,points|
		if vote.key(name) == 1
			names[name] = points += 3
		elsif vote.key(name) == 2
			names[name] = points += 2
		else
			names[name] = points += 1
		end
	end
end
puts names
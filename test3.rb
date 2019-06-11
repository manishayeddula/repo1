require 'csv'
file_1=CSV.read("redhat7.6.csv")
file_2=CSV.read("amazon2018.03.csv")
for i in 0..file_1.length
	arr=Array.new
	a=file_1[i].size
	b=file_2[i].size
	if (file_1[i]==file_2[i])
			next
	end
	if (a!=b)
		if a>b
			z=a
		puts "a val ",z
			for j in 0..z do

				if file_1[i][j]!=file_2[i][j] 
				
					arr.push(file_1[i][j])
				end
			end
		elsif b>a
			z=b	
		puts z
			for j in 0..z do

				if file_2[i][j]!=file_1[i][j] 
				
					arr.push(file_2[i][j])
				end
			end	
		end

	puts " #{file_1[i]} , #{file_2[i]}"

	puts "diff in data btwn tw files :-->>#{arr}"
	
	end
	if (a==b) and (file_1[i]!=file_2[i])
		for j in 0..a do
				if file_1[i][j]!=file_2[i][j]
					arr.push(file_2[i][j],file_1[i][j])
				
				end
		end
	puts " #{file_1[i]} , #{file_2[i]}"
	puts "Rw of equal length and diff in data btwn tw files :-->>#{arr}"
	
	end
end

		
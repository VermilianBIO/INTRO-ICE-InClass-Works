#5631209021 Kankanin Lomwattanatham

#AJ'PAC~~~~~~~!! if u see this i would love to have you help me learn the better way to write this!!
#@name part, i heard from somewhere that the first 2 words in the name are the whole 'first name'
#so i made the result like that. pls tell if i did something wrong.
#examples are song hyE kyO and kim taE heE.

require "csv"

score = []
name = []
color = []

CSV.foreach('data.csv', {:headers => true}) do|row|
	score << row['Score']
	name << row['Name']
	color << row['Color']
end
#==Score averaging
p "===================="
print "Highest-Lowest Score: \n"
print score.zip(name).sort[score.count-1][1]+" - "
print score.zip(name).sort[0][1]+"\n"
p "===================="
print "Average score: "
p (score.map {|s| s.to_f}.reduce(:+))/score.count
#==================
p "===================="
#==Color
sorted = color.group_by {|x| x}.sort_by{|x|x[1].length}.reverse.flat_map{|x| x[1]}
sortedc = color.group_by {|x| x}.sort_by{|x|x[1].length}.map{|x| x[1]}.group_by{|x|x.length}.map{|x| x[1]}
print "Most Favorite-Least Favorite Color: \n"
p sortedc.min[0][0]
p sortedc.max.join(",")
#==================
p "===================="
#==Cap name
print "Name List: \n"
name.each do |c|
	x = c.downcase
	y =x.split(" ").each_slice(x.split(" ").length-1).to_a
	z = y[0].join(" ").chars
	print (z.map{|b| b != z[z.rindex{|a|a}] ? b:b.upcase}).join("")+" "
	a = (y[1].join("").chars).each_slice(y[1].join("").chars.length-1).to_a
	print a[0].join("")+a[1].join("").upcase+"\n"
end
p "===================="
#==================

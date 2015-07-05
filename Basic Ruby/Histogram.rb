puts "Lets start by you providing me with a string:"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)

words.each do |word|
    frequencies[word] += 1
end

frequencies = frequencies.sort_by{|word,count| count}
frequencies.reverse!

frequencies.each{|name,count| puts name + " " + count.to_s}
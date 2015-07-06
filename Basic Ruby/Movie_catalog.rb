movies = {
    hurt_locker: 10,
    terminal: 9,
    wall_e: 9,
    pay_it_forward: 1,
    avengers: 8
}
choice = "empty"

puts "Welcome to the movie catalog! Please enter a command."
puts "You can enter the following commands:"
puts "'display'"
puts "'add'"
puts "'update'"
puts "'delete'"
puts "or type 'exit' to leave"


while choice != "exit"
puts "What would you like to do?"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "What new movie would you like to add?"
    title = gets.chomp.to_sym
    if movies.include?(title)
        puts "This movie is already here!"
    else
      puts "What rating would you like to give this movie?"
      rating = gets.chomp.to_i
      movies[title] = rating
  end
  when "update"
    puts "Which movie do you need to change the rating on?"
    title = gets.chomp.to_sym
    if movies.include?(title)
        puts "What new rating would you like to give the movie?"
        rating = gets.chomp.to_i
        movies[title] = rating
    else
        puts "You must 'add' a movie before you can update it."
    end
  when "display"
    movies.each do |title, rating|
#        puts "#{title.to_s.gsub("_"," ").capitalize} = #{rating.to_s}"
        puts "#{title}: #{rating}"
    end
  when "delete"
    puts "Which movie do you want to remove?"
    title = gets.chomp.to_sym
    if movies.include?(title)
        movies.delete(title)
    else
        puts "The movie does not exist in the catalog"
    end
  when "exit"
    puts "goodbye!"
  else 
    puts "Sorry, I didn't quite understand you there, try again"
    puts "Please enter a command or type 'exit' to leave"
end
end
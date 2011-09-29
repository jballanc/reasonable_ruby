# -*- encoding: UTF-8 -*-

class Greeter
  def morning
    puts "Günaydın!"
  end

  def evening
    puts "Iyi Akşamlar!"
  end
end

greetings = Greeter.new
loop do
  print "Is it AM or PM? "
  time = gets.chomp
  case time.upcase
  when 'AM'
    greetings.morning
  when 'PM'
    greetings.evening
  end
  puts "\n"
end



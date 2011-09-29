# -*- encoding: UTF-8 -*-

require './fancy_pants'

class FancyGreeter
  def morning
    puts "Günaydın!"
  end

  def evening
    fancify do
      puts "Iyi Akşamlar!"
    end
  end
end

greetings = FancyGreeter.new
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



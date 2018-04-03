require 'pry'
class Shoes::CLI
  def call

    puts "Aloha! This is the best place to find the hottest men's kicks. Let's get some shoes!"
    list_shoe_collection
    specifics
  end


  def list_shoe_collection
    puts ""
    puts "Check out the wide variety of high quality men's shoes."

    @all_shoes = Shoes::Shoe_list.shoes

    @all_shoes[0].each do |shoe|
      puts ""
      puts "#{shoe.name} - #{shoe.price}"

    end
        puts ""
        puts "What kind of shoes are you looking for? Please enter a size, color, material or type."
  end


  def list_shoes(input)
    puts ""
    puts "Here are the shoes based on your input."

    @shoes = Shoes::Shoe_list.scrape_shoes(input)

    @shoes[0].each do |shoe|
      puts ""
      puts "#{shoe.name} - #{shoe.price}"

    end
  end

  def specifics

    puts ""


    input = nil
    while input != "bye felicia"

    input = gets.strip.downcase
    case input
    when "brown", "black", "oxblood", "grey",
         "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
         "leather", "suede", "weave", "wool", "shoe", "boot", "chelsea"
         list_shoes(input)
         puts ""
         puts "Choose another shoe size, color, material, or type."
    when "bye felicia"
        see_ya
    else
        puts ""
        puts "We're sorry, it looks like we don't have that preference. Please enter something else or type bye felicia to exit."
    end
  end
end

  def see_ya
    puts "See you soon, beautiful!"
  end
end

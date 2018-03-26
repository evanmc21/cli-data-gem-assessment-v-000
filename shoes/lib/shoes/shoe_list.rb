require 'pry'
class Shoes::Shoe_list
  attr_accessor :name, :price


def self.shoes

  all_shoes = []

  all_shoes << self.scrape_shoes_brown
  all_shoes << self.scrape_shoes_black
  all_shoes << self.scrape_shoes_oxblood
  all_shoes << self.scrape_shoes_grey
  all_shoes << self.scrape_shoes_shoe
  all_shoes << self.scrape_shoes_boot
  all_shoes << self.scrape_shoes_chelsea
  all_shoes << self.scrape_shoes_six
  all_shoes << self.scrape_shoes_seven
  all_shoes << self.scrape_shoes_eight
  all_shoes << self.scrape_shoes_nine
  all_shoes << self.scrape_shoes_ten
  all_shoes << self.scrape_shoes_eleven
  all_shoes << self.scrape_shoes_twelve
  all_shoes << self.scrape_shoes_thirteen
  all_shoes << self.scrape_shoes_fourteen
  all_shoes << self.scrape_shoes_fifteen

  all_shoes

end


def self.scrape_shoes(input)

  method_name = "scrape_shoes_#{input}"

  shoes = []

  shoes << self.public_send(method_name)

shoes
end



def self.scrape_shoes_brown

  doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/brown"))

  doc.css("a.grid-product__meta").collect do |shoe_name|

  brown = self.new #self.new to create a new instance of this
  brown.name = shoe_name.css("span.grid-product__title").text
  brown.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
  brown
end
end


def self.scrape_shoes_black

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/black"))

doc.css("a.grid-product__meta").collect do |shoe_name|

black = self.new
black.name = shoe_name.css("span.grid-product__title").text
black.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
black
end
end

def self.scrape_shoes_oxblood

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/oxblood"))

doc.css("a.grid-product__meta").collect do |shoe_name|

oxblood = self.new
oxblood.name = shoe_name.css("span.grid-product__title").text
oxblood.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
oxblood
end
end

def self.scrape_shoes_grey

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/grey"))

doc.css("a.grid-product__meta").collect do |shoe_name|

grey = self.new
grey.name = shoe_name.css("span.grid-product__title").text
grey.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
grey
end
end

def self.scrape_shoes_shoe

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoe"))

doc.css("a.grid-product__meta").collect do |shoe_name|

shoe = self.new
shoe.name = shoe_name.css("span.grid-product__title").text
shoe.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
shoe
end
end

def self.scrape_shoes_boot

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/boot"))

doc.css("a.grid-product__meta").collect do |shoe_name|

boot = self.new
boot.name = shoe_name.css("span.grid-product__title").text
boot.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
boot
end
end
def self.scrape_shoes_chelsea

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/chelsea"))

doc.css("a.grid-product__meta").collect do |shoe_name|

chelsea_boot = self.new
chelsea_boot.name = shoe_name.css("span.grid-product__title").text
chelsea_boot.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
chelsea_boot
end
end

def self.scrape_shoes_leather

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/leather"))

doc.css("a.grid-product__meta").collect do |shoe_name|

leather = self.new
leather.name = shoe_name.css("span.grid-product__title").text
leather.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
leather
end
end

def self.scrape_shoes_suede

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/suede"))

doc.css("a.grid-product__meta").collect do |shoe_name|

suede = self.new
suede.name = shoe_name.css("span.grid-product__title").text
suede.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
suede
end
end

def self.scrape_shoes_weave

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/weave"))

doc.css("a.grid-product__meta").collect do |shoe_name|

weave = self.new
weave.name = shoe_name.css("span.grid-product__title").text
weave.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
weave
end
end

def self.scrape_shoes_wool

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/wool"))

doc.css("a.grid-product__meta").collect do |shoe_name|

wool = self.new
wool.name = shoe_name.css("span.grid-product__title").text
wool.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
wool
end
end

def self.scrape_shoes_six

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-6"))

doc.css("a.grid-product__meta").collect do |shoe_name|

six = self.new
six.name = shoe_name.css("span.grid-product__title").text
six.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
six
end
end

def self.scrape_shoes_seven

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-7"))

doc.css("a.grid-product__meta").collect do |shoe_name|

seven = self.new
seven.name = shoe_name.css("span.grid-product__title").text
seven.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
seven
end
end

def self.scrape_shoes_eight

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-8"))

doc.css("a.grid-product__meta").collect do |shoe_name|

eight = self.new
eight.name = shoe_name.css("span.grid-product__title").text
eight.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
eight
end
end

def self.scrape_shoes_nine

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-9"))

doc.css("a.grid-product__meta").collect do |shoe_name|

nine = self.new
nine.name = shoe_name.css("span.grid-product__title").text
nine.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
nine
end
end

def self.scrape_shoes_ten

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-10"))

doc.css("a.grid-product__meta").collect do |shoe_name|

ten = self.new
ten.name = shoe_name.css("span.grid-product__title").text
ten.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
ten
end
end

def self.scrape_shoes_eleven

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-11"))

doc.css("a.grid-product__meta").collect do |shoe_name|

eleven = self.new
eleven.name = shoe_name.css("span.grid-product__title").text
eleven.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
eleven
end
end

def self.scrape_shoes_twelve

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-12"))

doc.css("a.grid-product__meta").collect do |shoe_name|

twelve = self.new
twelve.name = shoe_name.css("span.grid-product__title").text
twelve.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
twelve
end
end

def self.scrape_shoes_thirteen

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-13"))

doc.css("a.grid-product__meta").collect do |shoe_name|

thirteen = self.new
thirteen.name = shoe_name.css("span.grid-product__title").text
thirteen.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
thirteen
end
end

def self.scrape_shoes_fourteen

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-14"))

doc.css("a.grid-product__meta").collect do |shoe_name|

fourteen = self.new
fourteen.name = shoe_name.css("span.grid-product__title").text
fourteen.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
fourteen
end
end

def self.scrape_shoes_fifteen

doc = Nokogiri::HTML(open("https://taftclothing.com/collections/shoes/shoesize-15"))

doc.css("a.grid-product__meta").collect do |shoe_name|

fifteen = self.new
fifteen.name = shoe_name.css("span.grid-product__title").text
fifteen.price = shoe_name.css("span.grid-product__price").text.gsub("  ", "").delete!("\n")
fifteen
end
end

end

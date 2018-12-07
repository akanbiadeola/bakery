require 'sinatra'
require 'httparty'
require './send.rb'

get '/' do
  erb :home
end

get '/our_story' do
erb :our_story
  end

get '/cookies' do
  erb :cookies
end

get '/cakes' do
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

def email(recipient)
Newsletter.welcome(recipient).deliver_now
end

post '/' do
recipient = params['email']
email(recipient)
erb :home
end


$cookies = []
$muffins = []
$cakes = []

class Cookies
attr_accessor :name, :image, :description, :price
def initialize (name , image, description, price)
  @name = name
  @image = image
  @description = description
  @price = price
  $cookies << self

 end
end

class Cakes
  attr_accessor :name , :image ,  :description , :price
  def initialize (name, image, description, price)
    @name = name
    @image = image
    @description = description
    @price = price
    $cakes << self
  end
end

class Muffins
  attr_accessor :name , :image , :description , :price
  def initialize(name, image, description , price)
  @name = name
  @image = image
  @description = description
  @price = price
  $muffins << self
end
end


cookie_a = Cookies.new("Chocolate chip" , "images/chocolatechip.jpg" , "A drop cookie which features chocolate chips as its distinguishing ingredient, also containing flour, shortening, eggs, and sugar" , "$7.99")
cookie_b = Cookies.new("Chocolate biscuit", "images/chocolatebiscuit.jpg", "One of several types of biscuit not containing chocolate" , "$9.99")
cookie_c = Cookies.new("Charcoal biscuit", "images/charcoal.jpg", "Biscuit based on a powdered willow charcoal or activated carbon mixed with ordinary flour, and made into dough with butter, sugar and eggs. " , "$11.99")
cookie_d = Cookies.new("Cavallucci", "images/cavallucci.jpg", "Chewy anise biscuits that contains almonds, candied fruits, coriander, flour and uses Tuscan millefiori honey." , "$7.99")
cookie_e = Cookies.new("Cat's cookie", "images/cats.jpg", "	A sweet and crunchy cookie prepared in the shape of a cat's tongue." , "$5.99")
cookie_f = Cookies.new("Carrot cookie", "images/carrot.jpg", "Prepared with ingredients that provide a flavor and texture similar to carrot cake" , "$9.99")
muffin_a = Muffins.new("Cinnamon Muffins", "images/applemuffin.jpg", "For breakfast or brunch, these easy apple cinnamon muffins are a tasty favorite" , "$5.99" )
muffin_b = Muffins.new("Banana Muffins", "images/bananamuffin.jpg", "banana bread muffins taste like banana bread in muffin form" , "$6.99" )
muffin_c = Muffins.new("Blueberry Muffins", "images/blueberrymuffin.jpg", "	A sweet and crunchy cookie prepared in the shape of a cat's tongue." , "$9.99" )
muffin_d = Muffins.new("Chocolate Muffins", "images/chocolatemuffin.jpg", "	A sweet and crunchy cookie prepared in the shape of a cat's tongue." , "$6.99" )
muffin_e = Muffins.new("Cornbread Muffins", "images/cornbreadmuffin.jpg", "	A sweet and crunchy cookie prepared in the shape of a cat's tongue." , "$4.99" )
muffin_f = Muffins.new("Honey Muffins", "images/honeymuffin.jpg", "	A sweet and crunchy cookie prepared in the shape of a cat's tongue." , "$2.99" )
cakes_a = Cakes.new("Cheesecake" , "images/cheesecake.jpg",  "Thin base made from crushed biscuits, with a thicker top layer of soft cheese, eggs and sugar." , "$8.99")
cakes_b = Cakes.new("Chenna poda" , "images/Chennapodacake.jpg" , "A cake made from milk solids and semolina." , "$5.99")
cakes_c = Cakes.new("Chestnut cake" , "images/chestnutcake.jpg" , "Prepared using chestnuts or water chestnuts as a main ingredient." , "$6.99")
cakes_d = Cakes.new("Chiffon cakee" , "images/chiffoncake.jpg" , "Light, airy cake made with vegetable oil, eggs, sugar, flour." , "$10.99")
cakes_e = Cakes.new("Chocolate cake" , "images/chocolatecake.jpg" , "Is a cake flavored with melted chocolate, cocoa powder or both" , "$8.99")
cakes_f = Cakes.new("Coconut cake" , "images/coconutcake.jpg" , "It is a cake frosted with a white frosting and covered in coconut flakes.r." , "$4.99")

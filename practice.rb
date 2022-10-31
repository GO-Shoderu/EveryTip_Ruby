# ############### printing ###################

puts "Hello"
print "World"
puts "!"

# multi line comments
=begin

    ######### variable declarations ############
    names are case sensitive
    it may begin with letters and underscores
    it may end with letters, numbers and underscores
    according to convention variables start with lowercase word, then additional words are lowercase seperated by underscores
    e.g. my_first_variable

=end

puts " "
name = "Mike"       # String
age = 30            # Integer
gpa = 3.5           # Decimal/Float
is_tall = true      # Boolean

name = "John"

puts "Your name is #{name}"
puts "Your name is " + name

# ########## Type casting ###############

puts " "
puts 3.14.to_i                  # converts to an integer
puts 3.to_f                     # converts to a float
puts 3.0.to_s                   # converts to a string

puts 100 + "50".to_i            # converts to an integer
puts 100 + "50.99".to_f         # converts to a float

puts age.to_f                   # converts what is stored in the variable to a float
puts gpa.to_i                   # converts what is stored in the variable to an integer

# ######### Strings ################

puts " "
greeting = "Hello"
#indexes    01234

puts greeting.length                # checks the length
puts greeting[0]                    # checks the values stored at index 0
puts greeting.include? "llo"        # checks if a string exist
puts greeting.include? "z"          # same here
puts greeting[1,3]                  # grabbing a substring

# ############### numbers ##################

puts " "
puts 2 * 3          # basic arithmetic +, -, /, *
puts 2**3           # exponents
puts 10 % 3         # modulus operation
puts 1 + 2 * 3      # order of operations
puts 10 / 3.0       # ints and doubles

puts " "
num = 10
num += 100          # +=, -=, /=, *=
puts num

puts " "
num = -36.8
puts num.abs()
puts num.round()

# useful math methods
puts " "
puts Math.sqrt(144)
puts Math.log(0)

# ############# User Input ################

puts " "
puts "Enter your name: "
# name = gets                     # with endline
name = gets.chomp               # without endline
# puts "Hello #{name}, how are you?"
puts "Hello " + name + ", how are you?"

puts "Enter first num: "
num1 = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f

# ########## arrays ###############

puts " "
lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
#indexes         0  1      2       3   4    5

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]

puts "\n\n"
puts lucky_numbers[2,3]             # starting from position 2 grab 3 elements
puts "\n\n"
puts lucky_numbers[2..4]            # grab elements from position 2 to 4
puts "\n\n"

puts lucky_numbers.length

# ########### N Dimensional Array ############

puts " "
number_grid = [[1, 2], [3, 4]]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]

# ########## Array methods ############

puts " "
friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevin")

puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort
puts "\n"

puts friends.include? "Oscar"       # checking if Oscar exist in the array

# ####### methods/functions ############

puts " "
def add_numbers(num1, num2=99)
    return num1 + num2
end

sum = add_numbers(4, 3)
puts sum

# ####### conditionals ###########

puts " "
is_student = false
is_smart = false

if is_student and is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"
end

# >, <, >=, <=, !=, ==, String.equals()

if 1 > 3
    puts "number comparison was true"
end

if "a" > "b"
    puts "Strig comparison was true"
end

# ########## switch statements ################

puts " "
my_grade = "A"

case my_grade
    when "A"
        puts "You Pass"
    when "F"
        puts "You fail"
    else
        puts "Invalid grade"
end

# ######## Dictionaries ###########

test_grades = {
    "Andy" => "B+",
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts " "
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]

# ###### while loops ###########

puts " "
index = 1

while index <= 5
    puts index
    index += 1
end

# ########### for loops ############

puts " "

# ## method 1 ##
for index in 0..5
    puts index
end

# ## method 2 ##
puts " "
5.times do |index|
    puts index
end

# ## method 3 ##
puts " "
lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
    puts lucky_num
end

# ## method 4 ##
puts " "
lucky_nums.each do |lucky_num|
    puts lucky_num
end

# ########## exception catching ###############

# num = 10/0
puts " "

begin
    num = 10/0
rescue
    puts "Error"
end

begin
    puts bad_variable
    num = 10/0
rescue ZeroDivisionError
    puts "Error"
rescue
    puts "All other errors"
end

# raise "Made Up Exception"

# ######## object orientation ######################

puts " "

# class Book
#     attr_accessor :title, :author

#     def readBook()
#         puts "Reading #{self.title} by #{self.author}"
#     end
# end

# book1 = Book.new()
# book1.title = "Harry Potter"
# book1.author = "JK Rowling"

# book1.readBook()
# puts book1.title

# ####### a class with constructor ##########

# class Book
#     attr_accessor :title, :author

#     def initialize(title, author)
#         @title = title
#         @author = author
#     end

#     def readBook()
#         puts "Reading #{self.title} by #{self.author}"
#     end
# end

# book1 = Book.new("Harry Potter", "JK Rowling")

# puts book1.title

# ########## a class with constructor, getter and setter ############

class Book
    attr_accessor :title, :author

    def initialize(title, author)
        @title = title
        @author = author
    end

    def title=(title)
        puts "Set"
        @title = title
    end

    def title
        puts "Get"
        return @title
    end

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new("Harry Potter", "JK Rowling")

puts book1.title

# ######### inheritance ############

puts " "
# class Chef
#     def make_chicken()
#         puts "The chef is making chicken"
#     end

#     def make_salad()
#         puts "THe chef is making salad"
#     end

#     def make_special_dish()
#         puts "The chef is making a special dish"
#     end
# end

# class ItalianChef < Chef
#     def make_pasta()
#         puts "The Italian chef is making pasta"
#     end

#     def make_special_dish()
#         puts "THe Italian chef is making chicken parm"
#     end
# end

# my_chef = Chef.new()
# my_chef.make_chicken()

# my_italian_chef = ItalianChef.new()
# my_italian_chef.make_chicken()


# ###### with variables #########
class Chef

    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def make_chicken()
        puts "The chef is making chicken"
    end

    def make_salad()
        puts "THe chef is making salad"
    end

    def make_special_dish()
        puts "The chef is making a special dish"
    end
end

class ItalianChef < Chef

    attr_accessor :country_of_origin

    def initialize(name, age, country_of_origin)
        @country_of_origin = country_of_origin
        super(name, age)
    end

    def make_pasta()
        puts "The Italian chef is making pasta"
    end

    def make_special_dish()
        puts "THe Italian chef is making chicken parm"
    end
end


my_chef = Chef.new("Gordan Ramsay", 50)
my_chef.make_chicken()

my_italian_chef = ItalianChef.new("Massimo Bottura", 55, "Italy")
my_italian_chef.make_chicken()
my_italian_chef.make_special_dish()
puts my_italian_chef.age

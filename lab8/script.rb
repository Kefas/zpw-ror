#!/usr/bin/env ruby

#Ex1

puts '------- Ex 1 --------'
puts

print '+'
10.times { print '-' }
puts '+'
2.times {
	print '|'
	10.times { print ' ' }
	puts '|'
}
print'+'
10.times { print '-' }
puts '+'

#Ex 2
puts '------- Ex 2 --------'
puts

word = 'AAAĄaaaąIIIiiiOOOooo'
puts word
puts word.downcase.gsub(/[a|ą]/, 'o').upcase.gsub('I', '') 
#problem with downcase and upcase polish letters

#Ex 3
puts '------- Ex 3 --------'
puts

word = "W domu było 10 kotów i 5 psów"

puts word
puts word.gsub(/\d/, 'x')

#Ex 4
puts '------- Ex 4 --------'
puts

arr = [4, 7, 8, nil, 10, 3, nil, 3, 4, nil, 6]

print arr
puts ''
print arr.uniq.select{ |x| x != nil }
puts ''

#Ex5
puts '------- Ex 5 --------'
puts

arr = (0..100).to_a
arr.select do |x|
	puts x if ( x % 2 == 0 && x % 4 != 0 && x.to_s.split('').inject(0){ |sum,x| sum += x.to_i} % 7 == 0)
end

#Ex6
puts '------- Ex 6 --------'
puts

players = ['Anna', 'Beata', 'Andrzej', 'Wojtek', 'Jan', 'Klaudia']
print players.combination(2).to_a

# def pair_players(arr)
# 	player_1, *tail = arr
# 	if tail.length > 0
# 		tail.each { |player_2| puts "#{player_1} with #{player_2}"}
# 		pair_players(tail)
# 	end
# end

# pair_players(players)

#Ex7
puts '------- Ex 7 --------'
puts

def cut(word)
	result = word
	if word.length > 15
		result = ''
		splited = word.split(' ')  
		splited.each{ |x| result.length + x.length + 3 < 16 ? result += x + ' '  : break }
		result.chop!
		result += "..."
	end
	result
end

puts cut("Ala ma kota.")
puts cut("Ala ma kota, papugę i psa.")
puts cut("Ala ma psa, papugę i kota.")


#Ex8
puts '------- Ex 8 --------'
puts

require 'csv'    

csv_text = File.read('authors.csv')
csv = CSV.parse(csv_text, :headers => true)
output = File.open('names.txt', 'w')
csv.each do |row|
  splited = row.to_s.split(',')
  output.puts splited[0].gsub('_', ' ')
end
puts 'Data was saved in names.txt'

#Ex9
puts '------- Ex 9 --------'
puts

require 'fileutils'


arr = []

File.open("names.txt", "r") do |f|
  f.each_line do |line|
    arr += line
  end
end

arr.sort!
FileUtils::mkdir_p 'data'

output = File.open('data/sorted_names.txt', 'w')
puts arr
arr.each do |row|
	output.puts row
end

puts 'Sorted data was saved in data/sorted_names.txt'


#Ex 10
puts '------- Ex 10 --------'
puts
class Podmiot
	def show_printcard
		puts first_line
		puts second_line
	end

	def first_line
	end

	def second_line
	end
end

class Company < Podmiot
	def initialize(name, street, city)
		@name = name
		@street = street
		@city = city
	end

	def first_line
		"Wizytówka company"
	end
	def second_line
		"#{@name}, #{@street}, #{@city}"
	end
end

class Person < Podmiot
	def initialize(name, surname, email)
		@name = name
		@surname = surname
		@email = email
	end

	def first_line
		"Wizytówka person"
	end
	def second_line
		"#{@name}, #{@surname}, #{@email}"
	end
end

company = Company.new("Garnki Inc.", "Blaszana 10", "Emaliowo")
person = Person.new("Andrzej", "Kowalski", "andrzej@kowalski.com")

#Ex 11
puts '------- Ex 11 --------'
puts

company.show_printcard
person.show_printcard




require 'net/http'
require 'json'
require 'pp'
 
url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)['message'] # Convert JSON data into Ruby data.
#pp dog_breeds # pp stands for pretty print.

# 3) Write a script that uses the JSON provided by the dog.ceo API to print out a nicely formatted list of dog breeds and sub-breeds. 
dog_breeds.each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}"
  end
end
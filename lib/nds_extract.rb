$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  result = {
    # :director => total
  }
  
  # Remember, it's always OK to pretty print what you get to make sure that you know what you're starting with!
  pp directors_database
  # p directors_database[0]

  # loop through each directors_database[:name] 
  i = 0 
  while i < directors_database.length do 
    
    source_array = directors_database[i][:movies]
    director = directors_database[i][:name]
    
    result[director] = 0 
    puts result
    i += 1 

 # iterate through movies array to grab value of :worldwide_gross key, sum up values
   
    total = 0 
    i = 0 
    while i < source_array.length do
      total += source_array[i][:worldwide_gross]
      i += 1 
    end
    
    puts total
    # return total
    result[director] = total 

    # i += 1 
  end
  
  # result[director] = total 

# return hash of { :name => total }

return result
  
end  


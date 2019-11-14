$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
require 'pp'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

pretty_print_nds(directors_database)

def print_first_directors_movie_titles
  # grab the array that stores first director's movies
  movies_arr = directors_database[0][:movies]
  # loop thru the array's each element, which contains title, studio, etc
  # set the starting index
  movies_arr_index = 0
  while movies_arr_index < movies_arr.count do
    # for each index, print out the movie array's title at that index 
    # using puts so each output is on a new line
    puts movies_arr[movies_arr_index][:title]
    movies_arr_index += 1
  end
end

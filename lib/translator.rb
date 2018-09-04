require 'yaml'
require 'pry'
# YAML.load_file('emoticons.yml')
# puts thing.inspect
# require modules here

def load_library(file_pah)
  library = { "get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file("./lib/emoticons.yml").each do |meaning, emoticon_array_when_loaded|
    english, japanese = emoticon_array_when_loaded
     library['get_meaning'][japanese] = meaning
     library['get_emoticon'][english] = japanese 
   end
   library
end 

# def load_library(file_pah)
#   emoticon_lib = {'get_meaning'  => {},
#                   'get_emoticon' => {} }
#   emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
#     english = value[0]
#     japanese = value[1]
#     emoticon_lib['get_meaning'][japanese] = meaning
#     emoticon_lib['get_emoticon'][english] = japanese
#   end
#   emoticon_lib
# end


def get_japanese_emoticon(file_path)
  library = { "get_meaning" => {}, "get_emoticon" => {}}
 YAML.load_file(file_path).each do |meaning, loaded_array|
   english, japanese = loaded_array 
   
   library[get_emoticon][english] = japanese
   if !loaded_array[get_emoticon][english].nil?
     library
   else 
     "sorry"
   end 
 end 
end

def get_english_meaning
  # code goes here
end
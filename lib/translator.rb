# require modules here
require "yaml"
<<<<<<< HEAD

def load_library(path)
 emoticons = YAML.load_file(path)
 emoticon_hash  = Hash.new
 
 emoticon_hash["get_emoticon"] = Hash.new
 emoticon_hash["get_meaning"] = Hash.new
 
   emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
=======
def load_library
  YAML.load_file(emoticons.yml)
>>>>>>> 75fc532fc3bb156ff1733ac4b13d050c69f4b484
end


def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil 
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path,emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

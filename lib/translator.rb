require "yaml" 
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = {}

  emoticon_hash["get_emoticon"] = {}
  emoticon_hash["get_meaning"] = {}
  
  emoticons.each do |meaning, emoticon_ary|
    emoticon_hash["get_emoticon"][emoticon_ary.first] = emoticon_ary.last
    
    emoticon_hash["get_meaning"][emoticon_ary.last] = meaning
  
  end
  emoticon_hash
  
end

def get_japanese_emoticon(path, emoticon)
 emoticon_hash = load_library(path)
 emoticon_hash.each do |key, value|

    if key == "get_emoticon"
      value.each do |e_emoticon, j_emoticon|
        if emoticon = e_emoticon
          return j_emoticon
        end  
      end  
    end   
  
 end
 
  
end

def get_english_meaning
  # code goes here
end
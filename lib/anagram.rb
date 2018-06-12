# Build the Anagram class 
class Anagram 
  attr_accessor :word 
  
  def initialize(word)
    @word = word 
  end 
  
  def match(word_list) 
    word_list.select {|w| w.split.sort.join == @word.split.join}
  end 
end 
  

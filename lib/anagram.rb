# Build the Anagram class 
class Anagram 
  attr_accessor :word 
  
  def initialize(word)
    @word = word 
  end 
  
  def match(word_list) 
    sorted = @word.split.sort.join
    word_list.select {|w| w.split.sort.join == sorted}
  end 
end 
  
listen = Anagram.new("listen")
puts "listen".split.sort.join
puts listen.match(%w(enlists google inlets banana))
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end 

  def match(array)
  array.select do |element|
  (@word.split("").sort) == (element.split("").sort)
    end
    
  end 
  
  

    anagrams = []
    word_list.each do |word|
      if prep(@anagram) == prep(word) && @anagram.downcase != word.downcase
        anagrams << word
      end
    end
    anagrams
  end

  private
  def prep(word)
    word.downcase.scan(/\w/).sort
  end
end
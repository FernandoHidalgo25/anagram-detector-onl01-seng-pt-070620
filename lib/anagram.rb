class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word 
  end 

  def match(array)
    
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
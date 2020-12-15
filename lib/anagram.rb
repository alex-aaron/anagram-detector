# Your code goes here!
class Anagram
    def initialize(word)
        @word = word
    end

    attr_accessor :word

    def match(anagrams)
        word_array = @word.split("")
        sorted_word_array = word_array.sort
        return_array = []
        anagrams.each do |anagram|
            anagram_array = anagram.split("")
            sorted_anagram_array = anagram_array.sort
            if sorted_word_array == sorted_anagram_array
                return_array << anagram
            end
        end
        return_array
    end
end
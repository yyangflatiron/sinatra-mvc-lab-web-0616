require 'Pry'
class PigLatinizer
  attr_accessor :word, :pig
  @@alphabet = ('a'..'z').to_a
  @@vowels = ['a','e','i','o','u']
  @@consonants = @@alphabet - @@vowels

  def initialize
    @word = word
  end

  def piglatinize(word)
    if @@vowels.include?(word[0].downcase)
      word = word + 'way'
    else
      while @@consonants.include?(word[0].downcase)
       word = word[1..-1]+word[0]
      end
      word = word +'ay'
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split
    new_sentence = []
    words.each do |word|
      new_sentence << piglatinize(word)
    end
    new_sentence.join(" ")
  end



end
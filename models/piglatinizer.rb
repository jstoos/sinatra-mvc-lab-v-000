class PigLatinizer
  attr_reader :text, :sentence

  @text = []

  def initialize
  end

  def piglatinize(text)
    @sentence = ""
    @text = text.split
    @text.collect do |word|
      if word[0].match(/[aeiou]/)
        @sentence = @sentence.concat("#{word.concat('way')} ")
      else
        first_letter = word[0]
        word[0] = ""
        ending = "#{word.concat('#{first_letter}ay ')}"
        @sentence.concat(ending)
      end
    end
    binding.pry
  end

end

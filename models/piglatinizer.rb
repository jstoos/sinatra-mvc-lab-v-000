class PigLatinizer
  attr_reader :text, :sentence

  @text = []

  def initialize
  end

  def piglatinize(text)
    @sentence = ""
    @text = text.split
    @text.collect do |word|
      if word[0].match(/[aeiouAEIOU]/)
        @sentence = @sentence.concat("#{word.concat('way')} ")
      elsif !word[0].match(/[aeiouAEIOU]/) && !word[1].match(/[aeiouAEIOU]/)
        
      else
        first_letter_plus_ay = word[0].concat("ay")
        word[0] = ""
        @sentence = @sentence.concat("#{word.concat(first_letter_plus_ay)} ")
      end
    end
    @sentence.strip
  end

end

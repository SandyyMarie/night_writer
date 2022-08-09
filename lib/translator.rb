module Translator
    def translate_to_braille(phrase)
        line1 = ""
        line2 = ""
        line3 = ""
        # letter_counter = 0
        phrase.chars.each do |letter|
            line1 << alphabet[letter.downcase][0][:line1]
            line2 << alphabet[letter.downcase][0][:line2]
            line3 << alphabet[letter.downcase][0][:line3]
            # letter_counter += 1
        end
        final = "#{line1}\n#{line2}\n#{line3}"
        # to_write(final) #could turn into hash
    end
end
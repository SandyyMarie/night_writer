module Translator
    def translate_to_braille(phrase)
        line1 = ""
        line2 = ""
        line3 = ""
        phrase.chars.each do |letter|
            line1 << alphabet[letter.downcase][0][:line1]
            line2 << alphabet[letter.downcase][0][:line2]
            line3 << alphabet[letter.downcase][0][:line3]
        end
        final = "#{line1}\n#{line2}\n#{line3}"
    end

    def braille_splitter(phrase)
        back_to_letters = ""
        phrase.split("\n")
        line1 = phrase.split("\n")[0].scan(/.{2}/)
        line2 = phrase.split("\n")[1].scan(/.{2}/)
        line3 = phrase.split("\n")[2].scan(/.{2}/)
        
        to_be_translated = [line1, line2, line3]
        to_translate_array = line1.zip(line2,line3)
    end

    def translate_to_alphabet(to_translate)
        translated_txt = ""
        to_translate.each do |bletter|
            if bletter != nil
                translated_txt << alphabet.key([:line1 => bletter[0], :line2 => bletter[1], :line3 => bletter[2]])
            end
        end
        translated_txt
    end
end
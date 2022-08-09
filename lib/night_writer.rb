require_relative './dictionary'
require_relative './translator'

class NightWriter
    include Dictionary
    include Translator
    attr_reader :out_file, 
                :read_file

    attr_writer :translated_txt

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"
        # @alphabet_index = Hash.new #removed .new(0)

        @translated_txt = []
        translate(@read_file.join)   

    end

    def translated(translated1, translated2, translated3) #changed from name write, might need to update
        final = "#{translated1}\n#{translated2}\n#{translated3}"
        @out_file.write(final) #change read_file to whatever output i want
    end

    def translate(phrase)
        line1 = ""
        line2 = ""
        line3 = ""
        letter_counter = 0
        phrase.chars.each do |letter|
            
            line1 << alphabet[letter.downcase][0][:line1]
            line2 << alphabet[letter.downcase][0][:line2]
            line3 << alphabet[letter.downcase][0][:line3]
            letter_counter += 1

            # if letter_counter == 40
            #     line1 << "\n" + line2 + "\n" + line3 + "\n"
            #     # line2 << "\n"
            #     # line3 << "\n"
            #     letter_counter = 0
            # end
        end
        translated(line1, line2, line3) #could turn into hash
        # puts "#{line1}\n#{line2}\n#{line3}"

        #coming back to dividing each sentence into 40 braille characters each/80 dots wide

    end

    def print

    end
end

nightwriter = NightWriter.new
nightwriter 

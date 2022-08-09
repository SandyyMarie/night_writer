require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'

class NightWriter
    include Dictionary
    include Translator
    include DocWriter
    attr_reader :out_file, 
                :read_file

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"
        
        # translate_to_braille(@read_file.join)  
        to_write(translate_to_braille(@read_file.join)) #could turn into hash

    end

    # def translate_to_braille(phrase)
    #     line1 = ""
    #     line2 = ""
    #     line3 = ""
    #     # letter_counter = 0
    #     phrase.chars.each do |letter|
    #         line1 << alphabet[letter.downcase][0][:line1]
    #         line2 << alphabet[letter.downcase][0][:line2]
    #         line3 << alphabet[letter.downcase][0][:line3]
    #         # letter_counter += 1
    #     end
    #     final = "#{line1}\n#{line2}\n#{line3}"
    #     to_write(final) #could turn into hash
    # end
    #coming back to dividing each sentence into 40 braille characters each/80 dots wide
    #return line 1-3 then call to write
end

nightwriter = NightWriter.new
nightwriter 

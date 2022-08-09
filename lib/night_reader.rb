require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'


class NightReader
    include Dictionary
    include Translator
    include DocWriter

    attr_reader :out_file, 
                :read_file

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        translate(@read_file.join) 

        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length / 6} characters" #might need to revisit
    end

    def translate(phrase)
        back_to_letters = ""

        phrase.split("\n")
        line1 = phrase.split("\n")[0].scan(/.{2}/)
        line2 = phrase.split("\n")[1].scan(/.{2}/)
        line3 = phrase.split("\n")[2].scan(/.{2}/)
        
        to_be_translated = [line1, line2, line3]
        to_translate_array = line1.zip(line2,line3)

        to_write(to_alphabet(to_translate_array)) #could turn into hash
    end

    def to_alphabet(to_translate)
        translated_txt = ""
        to_translate.each do |bletter|
            if bletter != nil
                translated_txt << alphabet.key([:line1 => bletter[0], :line2 => bletter[1], :line3 => bletter[2]])
            end
        end
        translated_txt
    end
end

nightreader = NightReader.new
nightreader
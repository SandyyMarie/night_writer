require_relative './dictionary'
require_relative './translator'

class NightReader
    include Dictionary
    include Translator

    attr_reader :out_file, 
                :read_file

    attr_writer :translated_txt

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        
        # @translated_txt = []
        translate(@read_file.join) 

        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length / 6} characters" #might need to revisit

    end

    def to_write(final) #changed from name write, might need to update
        @out_file.write(final)
    end

    def translate(phrase)
        # @alphabet = Hash.new(0)
        # @alphabet[" "] = [line1: "..", line2: "..", line3: ".."]
        # @alphabet["a"] = [line1: "0.", line2: "..", line3: ".."]
        # @alphabet["b"] = [line1: "0.", line2: "0.", line3: ".."]
        # @alphabet["c"] = [line1: "00", line2: "..", line3: ".."]
        # @alphabet["d"] = [line1: "00", line2: ".0", line3: ".."]
        # @alphabet["e"] = [line1: "0.", line2: ".0", line3: ".."]
        # @alphabet["f"] = [line1: "00", line2: "0.", line3: ".."]
        # @alphabet["g"] = [line1: "00", line2: "00", line3: ".."]
        # @alphabet["h"] = [line1: "0.", line2: "00", line3: ".."]
        # @alphabet["i"] = [line1: ".0", line2: "0.", line3: ".."]
        # @alphabet["j"] = [line1: ".0", line2: "00", line3: ".."]
        # @alphabet["k"] = [line1: "0.", line2: "..", line3: "0."]
        # @alphabet["l"] = [line1: "0.", line2: "0.", line3: "0."]
        # @alphabet["m"] = [line1: "00", line2: "..", line3: "0."]
        # @alphabet["n"] = [line1: "00", line2: ".0", line3: "0."]
        # @alphabet["o"] = [line1: "0.", line2: ".0", line3: "0."]
        # @alphabet["p"] = [line1: "00", line2: "0.", line3: "0."]
        # @alphabet["q"] = [line1: "00", line2: "00", line3: "0."]
        # @alphabet["r"] = [line1: "0.", line2: "00", line3: "0."]
        # @alphabet["s"] = [line1: ".0", line2: "0.", line3: "0."]
        # @alphabet["t"] = [line1: ".0", line2: "00", line3: "0."]
        # @alphabet["u"] = [line1: "0.", line2: "..", line3: "00"]
        # @alphabet["v"] = [line1: "0.", line2: "0.", line3: "00"]
        # @alphabet["w"] = [line1: ".0", line2: "00", line3: ".0"]
        # @alphabet["x"] = [line1: "00", line2: "..", line3: "00"]
        # @alphabet["y"] = [line1: "00", line2: ".0", line3: "00"]
        # @alphabet["z"] = [line1: "0.", line2: ".0", line3: "00"]
        # @alphabet["."] = [line1: "..", line2: "00", line3: ".0"]
        # @alphabet[","] = [line1: "..", line2: "0.", line3: ".."]
        # @alphabet[";"] = [line1: "..", line2: "0.", line3: "0."]
        # @alphabet[":"] = [line1: "..", line2: "00", line3: ".."]
        # @alphabet["!"] = [line1: "..", line2: "00", line3: "0."]
        # @alphabet["?"] = [line1: "..", line2: "0.", line3: "00"]
        # @alphabet['"'] = [line1: "..", line2: "0.", line3: "00"]
        # @alphabet["'"] = [line1: "..", line2: "..", line3: "0."]
        # @alphabet["("] = [line1: "..", line2: "00", line3: "00"]
        # @alphabet[")"] = [line1: "..", line2: "00", line3: "00"]
        # @alphabet["-"] = [line1: "..", line2: "..", line3: "00"]
        # @alphabet["*"] = [line1: "....", line2: ".0.0", line3: "0.0."] #special case, needs to print twice
       
        
        back_to_letters = ""

        phrase.split("\n")
        line1 = phrase.split("\n")[0].scan(/.{2}/)
        line2 = phrase.split("\n")[1].scan(/.{2}/)
        line3 = phrase.split("\n")[2].scan(/.{2}/)
        
        to_be_translated = [line1, line2, line3]
        to_translate_array = line1.zip(line2,line3)

        
        to_write(to_alphabet(to_translate_array)) #could turn into hash
# line1.scan(/.{2}/)

    end

    def to_alphabet(to_translate)
        translated_txt = ""
        # to_translate.each do |bletter|
        #     require 'pry'; binding.pry
        #     @alphabet.each do |aletter|

        #     end
        # end

        # translated_array
        to_translate.each do |bletter|
            if bletter != nil
                translated_txt << alphabet.key([:line1 => bletter[0], :line2 => bletter[1], :line3 => bletter[2]])
            end
        end
        translated_txt
        #hash.key(value) => key
    end
end

nightreader = NightReader.new
nightreader
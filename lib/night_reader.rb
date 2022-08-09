class NightReader

    attr_reader :out_file, 
                :read_file

    attr_writer :translated_txt

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"

        # @translated_txt = []
        translate(@read_file.join)   

    end

    def translated(final) #changed from name write, might need to update
        @out_file.write(final)
    end

    def translate(phrase)
        alphabet = Hash.new(0)
        alphabet["a"] = [line1: "0.", line2: "..", line3: ".."]
        alphabet["b"] = [line1: "0.", line2: "0.", line3: ".."]
        alphabet["c"] = [line1: "00", line2: "..", line3: ".."]
        alphabet["d"] = [line1: "00", line2: ".0", line3: ".."]
        alphabet["e"] = [line1: "0.", line2: ".0", line3: ".."]
        alphabet["f"] = [line1: "00", line2: "0.", line3: ".."]
        alphabet["g"] = [line1: "00", line2: "00", line3: ".."]
        alphabet["h"] = [line1: "0.", line2: "00", line3: ".."]
        alphabet["i"] = [line1: ".0", line2: "0.", line3: ".."]
        alphabet["j"] = [line1: ".0", line2: "00", line3: ".."]
        alphabet["k"] = [line1: "0.", line2: "..", line3: "0."]
        alphabet["l"] = [line1: "0.", line2: "0.", line3: "0."]
        alphabet["m"] = [line1: "00", line2: "..", line3: "0."]
        alphabet["n"] = [line1: "00", line2: ".0", line3: "0."]
        alphabet["o"] = [line1: "0.", line2: ".0", line3: "0."]
        alphabet["p"] = [line1: "00", line2: "0.", line3: "0."]
        alphabet["q"] = [line1: "00", line2: "00", line3: "0."]
        alphabet["r"] = [line1: "0.", line2: "00", line3: "0."]
        alphabet["s"] = [line1: ".0", line2: "0.", line3: "0."]
        alphabet["t"] = [line1: ".0", line2: "00", line3: "0."]
        alphabet["u"] = [line1: "0.", line2: "..", line3: "00"]
        alphabet["v"] = [line1: "0.", line2: "0.", line3: "00"]
        alphabet["w"] = [line1: ".0", line2: "00", line3: ".0"]
        alphabet["x"] = [line1: "00", line2: "..", line3: "00"]
        alphabet["y"] = [line1: "00", line2: ".0", line3: "00"]
        alphabet["z"] = [line1: "0.", line2: ".0", line3: "00"]

        back_to_letters = ""

        phrase.split("\n")
        line1 = phrase.split("\n")[0].scan(/.{2}/)
        line2 = phrase.split("\n")[1].scan(/.{2}/)
        line3 = phrase.split("\n")[2].scan(/.{2}/)
        
        to_be_translated = [line1, line2, line3]
        require 'pry'; binding.pry
        line1.zip(line2,line3)
        
        # i = 0
        # while line1.count < i, i ++

        # end

        translated(line1, line2, line3) #could turn into hash
# line1.scan(/.{2}/)

    end
end

nightreader = NightReader.new
nightreader
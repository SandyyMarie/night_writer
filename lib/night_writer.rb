class NightWriter

    attr_reader :out_file, 
                :read_file,
                :alphabet

    attr_writer :translated_txt

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"

        @translated_txt = []
        translate(@read_file.join)   

    end

    def translated(translated1, translated2, translated3) #changed from name write, might need to update
        final = "#{translated1}\n#{translated2}\n#{translated3}"
        @out_file.write(final) #change read_file to whatever output i want
    end

    def translate(phrase)
        @alphabet = Hash.new #removed .new(0)
        @alphabet[" "] = [line1: "..", line2: "..", line3: ".."] 
        @alphabet["a"] = [line1: "0.", line2: "..", line3: ".."]
        @alphabet["b"] = [line1: "0.", line2: "0.", line3: ".."]
        @alphabet["c"] = [line1: "00", line2: "..", line3: ".."]
        @alphabet["d"] = [line1: "00", line2: ".0", line3: ".."]
        @alphabet["e"] = [line1: "0.", line2: ".0", line3: ".."]
        @alphabet["f"] = [line1: "00", line2: "0.", line3: ".."]
        @alphabet["g"] = [line1: "00", line2: "00", line3: ".."]
        @alphabet["h"] = [line1: "0.", line2: "00", line3: ".."]
        @alphabet["i"] = [line1: ".0", line2: "0.", line3: ".."]
        @alphabet["j"] = [line1: ".0", line2: "00", line3: ".."]
        @alphabet["k"] = [line1: "0.", line2: "..", line3: "0."]
        @alphabet["l"] = [line1: "0.", line2: "0.", line3: "0."]
        @alphabet["m"] = [line1: "00", line2: "..", line3: "0."]
        @alphabet["n"] = [line1: "00", line2: ".0", line3: "0."]
        @alphabet["o"] = [line1: "0.", line2: ".0", line3: "0."]
        @alphabet["p"] = [line1: "00", line2: "0.", line3: "0."]
        @alphabet["q"] = [line1: "00", line2: "00", line3: "0."]
        @alphabet["r"] = [line1: "0.", line2: "00", line3: "0."]
        @alphabet["s"] = [line1: ".0", line2: "0.", line3: "0."]
        @alphabet["t"] = [line1: ".0", line2: "00", line3: "0."]
        @alphabet["u"] = [line1: "0.", line2: "..", line3: "00"]
        @alphabet["v"] = [line1: "0.", line2: "0.", line3: "00"]
        @alphabet["w"] = [line1: ".0", line2: "00", line3: ".0"]
        @alphabet["x"] = [line1: "00", line2: "..", line3: "00"]
        @alphabet["y"] = [line1: "00", line2: ".0", line3: "00"]
        @alphabet["z"] = [line1: "0.", line2: ".0", line3: "00"]
        @alphabet["."] = [line1: "..", line2: "00", line3: ".0"]
        @alphabet[","] = [line1: "..", line2: "0.", line3: ".."]
        @alphabet[";"] = [line1: "..", line2: "0.", line3: "0."]
        @alphabet[":"] = [line1: "..", line2: "00", line3: ".."]
        @alphabet["!"] = [line1: "..", line2: "00", line3: "0."]
        @alphabet["?"] = [line1: "..", line2: "0.", line3: "00"]
        @alphabet['"'] = [line1: "..", line2: "0.", line3: "00"]
        @alphabet["'"] = [line1: "..", line2: "..", line3: "0."]
        @alphabet["("] = [line1: "..", line2: "00", line3: "00"]
        @alphabet[")"] = [line1: "..", line2: "00", line3: "00"]
        @alphabet["-"] = [line1: "..", line2: "..", line3: "00"]
        @alphabet["*"] = [line1: "....", line2: ".0.0", line3: "0.0."] 
       
       
        line1 = ""
        line2 = ""
        line3 = ""
        phrase.chars.each do |letter|
            line1 << alphabet[letter.downcase][0][:line1]
            line2 << alphabet[letter.downcase][0][:line2]
            line3 << alphabet[letter.downcase][0][:line3]
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

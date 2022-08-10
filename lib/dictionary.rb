module Dictionary
    def alphabet
        alphabet_index = Hash.new #removed .new(0), could be here or dictionary
        alphabet_index[" "] = [line1: "..", line2: "..", line3: ".."] 
        alphabet_index["a"] = [line1: "0.", line2: "..", line3: ".."]
        alphabet_index["b"] = [line1: "0.", line2: "0.", line3: ".."]
        alphabet_index["c"] = [line1: "00", line2: "..", line3: ".."]
        alphabet_index["d"] = [line1: "00", line2: ".0", line3: ".."]
        alphabet_index["e"] = [line1: "0.", line2: ".0", line3: ".."]
        alphabet_index["f"] = [line1: "00", line2: "0.", line3: ".."]
        alphabet_index["g"] = [line1: "00", line2: "00", line3: ".."]
        alphabet_index["h"] = [line1: "0.", line2: "00", line3: ".."]
        alphabet_index["i"] = [line1: ".0", line2: "0.", line3: ".."]
        alphabet_index["j"] = [line1: ".0", line2: "00", line3: ".."]
        alphabet_index["k"] = [line1: "0.", line2: "..", line3: "0."]
        alphabet_index["l"] = [line1: "0.", line2: "0.", line3: "0."]
        alphabet_index["m"] = [line1: "00", line2: "..", line3: "0."]
        alphabet_index["n"] = [line1: "00", line2: ".0", line3: "0."]
        alphabet_index["o"] = [line1: "0.", line2: ".0", line3: "0."]
        alphabet_index["p"] = [line1: "00", line2: "0.", line3: "0."]
        alphabet_index["q"] = [line1: "00", line2: "00", line3: "0."]
        alphabet_index["r"] = [line1: "0.", line2: "00", line3: "0."]
        alphabet_index["s"] = [line1: ".0", line2: "0.", line3: "0."]
        alphabet_index["t"] = [line1: ".0", line2: "00", line3: "0."]
        alphabet_index["u"] = [line1: "0.", line2: "..", line3: "00"]
        alphabet_index["v"] = [line1: "0.", line2: "0.", line3: "00"]
        alphabet_index["w"] = [line1: ".0", line2: "00", line3: ".0"]
        alphabet_index["x"] = [line1: "00", line2: "..", line3: "00"]
        alphabet_index["y"] = [line1: "00", line2: ".0", line3: "00"]
        alphabet_index["z"] = [line1: "0.", line2: ".0", line3: "00"]
        alphabet_index["."] = [line1: "..", line2: "00", line3: ".0"]
        alphabet_index[","] = [line1: "..", line2: "0.", line3: ".."]
        alphabet_index[";"] = [line1: "..", line2: "0.", line3: "0."]
        alphabet_index[":"] = [line1: "..", line2: "00", line3: ".."]
        alphabet_index["!"] = [line1: "..", line2: "00", line3: "0."]
        alphabet_index["?"] = [line1: "..", line2: "0.", line3: "00"]
        alphabet_index['"'] = [line1: "..", line2: "0.", line3: "00"]
        alphabet_index["'"] = [line1: "..", line2: "..", line3: "0."]
        alphabet_index["("] = [line1: "..", line2: "00", line3: "00"]
        alphabet_index[")"] = [line1: "..", line2: "00", line3: "00"]
        alphabet_index["-"] = [line1: "..", line2: "..", line3: "00"]
        alphabet_index["*"] = [line1: "....", line2: ".0.0", line3: "0.0."] 
        alphabet_index
    end
end
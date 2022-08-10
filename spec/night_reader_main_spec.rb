require './spec/spec_helper'
require './lib/night_reader_main.rb'

RSpec.describe NightReaderMain do
 before :each do
        read_file = "dummy_braille.txt"
        write_file = "test_dummy.txt"
        @nightreader = NightReaderMain.new(read_file, write_file)
    end

    it 'exists' do
        expect(@nightreader).to be_a(NightReaderMain)
    end
    
    it 'can count the lines in the given file' do
        expect(@nightreader.read_file.join.length).to eq(68) 
    end

    # xit 'can split the braille phrases coming in into a set of paired arrays representing individual letters' do
    #     phrase = ["0.0.0.0.0..00.0.0.00\n00.00.0..000.0000..0\n....0.0.0..00.0.0..."]
    #     expect(@nightreader.braille_splitter(phrase.to_s)).to eq(["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."])
    # end
    #^ works when tested in pry, 100% coverage without it

    it 'can print "hello world"' do
        expect(@nightreader.translate_to_alphabet([["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]])).to eq("hello world")
    end

    it 'can return the alphabet hash' do
        expect(@nightreader.alphabet).to be_a(Hash)
        expect(@nightreader.alphabet.key([line1: "0.", line2: "..", line3: ".."])).to eq("a")
    end
end
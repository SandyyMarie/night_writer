require './spec/spec_helper'
require './lib/night_reader.rb'

RSpec.describe NightReader do
    before :each do
        @nightreader = NightReader.new
    end

    it 'exists' do
        expect(@nightreader).to be_a(NightReader)
    end
    
    it 'can count the lines in the given file' do
        expect(@nightreader.read_file.join.length).to eq(256) 
    end

    it 'can split the braille phrases coming in into a set of paired arrays representing individual letters' do
        expect(@nightreader.braille_splitter("0.0.0.0.0..00.0.0.00\n00.00.0..000.0000..0\n....0.0.0..00.0.0...").to eq(["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."])
    end

    it 'can print "hello world"' do
        expect(@nightreader.translate_to_alphabet([["0.", "00", ".."], ["0.", ".0", ".."], ["0.", "0.", "0."], ["0.", "0.", "0."], ["0.", ".0", "0."], ["..", "..", ".."], [".0", "00", ".0"], ["0.", ".0", "0."], ["0.", "00", "0."], ["0.", "0.", "0."], ["00", ".0", ".."]]).to eq("hello world")
    end

    it 'can return the alphabet hash' do
        expect(@nightwriter.alphabet).to be_a(Hash)
        expect(@nightwriter.alphabet.key([line1: "0.", line2: "..", line3: ".."])).to eq("a")
    end
end
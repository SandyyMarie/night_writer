require './spec/spec_helper'
require './lib/night_writer_main.rb'

RSpec.describe NightWriterMain do
    before :each do
        read_file = "dummy_alphabet.txt"
        write_file = "test_dummy.txt"
        @nightwriter = NightWriterMain.new(read_file, write_file)
    end

    it 'exists' do
        expect(@nightwriter).to be_a(NightWriterMain)
    end

    it 'can count the lines in the given file' do
        expect(@nightwriter.read_file.join.length).to eq(11) 
    end

    it 'can translate a given letter to the braille representation' do
        expect(@nightwriter.translate_to_braille("h")).to eq("0.\n00\n..")
    end
    
    it 'can translate entire phrase "hello world"' do
        expect(@nightwriter.translate_to_braille("hello world")).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
    end


    it 'can return the alphabet hash' do
        expect(@nightwriter.alphabet).to be_a(Hash)
        expect(@nightwriter.alphabet["a"]).to eq([line1: "0.", line2: "..", line3: ".."])
    end

end


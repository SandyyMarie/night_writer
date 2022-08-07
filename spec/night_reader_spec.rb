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

    it 'can translate a given letter to the braille representation' do
        expect(@nightreader.translate("0.\n00\n..")).to eq("h")
    end

    it 'can print "hello world"' do
        expect(@nightreader.translate("0.0.0.0.0..00.0.0.00\n00.00.0..000.0000..0\n....0.0.0..00.0.0...")).to eq("hello world") #might to rewrite imput or function
    end

end
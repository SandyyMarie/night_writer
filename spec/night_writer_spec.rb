require './lib/night_writer.rb'

RSpec.describe NightWriter do
    before :each do
        # allow(@nightwriter).to receive(ARGV[0]).and_return("message.txt")
        # allow(@nightwriter).to receive(ARGV[1]).and_return("braille.txt")
        @nightwriter = NightWriter.new

        #how to initialize with text files

    end

    it 'exists' do
        expect(@nightwriter).to be_a(NightWriter)
    end

    it 'can translate a given letter to the braille representation' do
        expect(@nightwriter.translate("h")).to eq("0.\n00\n..")
    end

    it 'can count the lines in the given file' do
        expect(@nightwriter.read_file.join.length).to eq(256) 
    end

    it 'can print "hello world"' do
        expect(@nightwriter.translate("hello world")).to eq("0.0.0.0.0..00.0.0.00\n00.00.0..000.0000..0\n....0.0.0..00.0.0...")
    end

    it 'can return the alphabet hash' do
        expect(@nightwriter.alphabet).to be_a(Hash)
        expect(@nightwriter.alphabet["a"]).to eq([line1: "0.", line2: "..", line3: ".."])
    end

end
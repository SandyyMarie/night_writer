require './lib/night_writer.rb'

RSpec.describe NightWriter do
    before :each do
        ARGV[1] = "braille.txt"
        ARGV[0] = "message.txt"
        @nightwriter = NightWriter.new(ARGV[0], ARGV[1])

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


end
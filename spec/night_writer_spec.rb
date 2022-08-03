require './lib/night_writer.rb'

RSpec.describe NightWriter do
    before :each do
        @nightwriter = NightWriter.new
    end

    it 'exists' do
        expect(@nightwriter).to be_a(NightWriter)
    end

    it 'can translate a given letter to the braille representation' do
        expect(@nightwriter.translate("h")).to eq("0.\n00\n..")
    end

    # it 'can count the lines in the given file' do
    #     expect() #read_file.lines to return characters?
    # end

    
end
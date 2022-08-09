require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'

class NightReader
    include Dictionary
    include Translator
    include DocWriter

    attr_reader :out_file, 
                :read_file

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        to_write(translate_to_alphabet(braille_splitter(@read_file.join))) #could turn into hash
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length / 6} characters" #might need to revisit
    end
end

nightreader = NightReader.new
nightreader
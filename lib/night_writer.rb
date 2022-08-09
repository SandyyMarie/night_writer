require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'

class NightWriter
    include Dictionary
    include Translator
    include DocWriter

    attr_reader :out_file, 
                :read_file

    def initialize
        # require 'pry'; binding.pry
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"
        to_write(translate_to_braille(@read_file.join)) 
    end
end

nightwriter = NightWriter.new
nightwriter 

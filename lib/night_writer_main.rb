require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'

class NightWriterMain
    include Dictionary
    include Translator
    include DocWriter

    attr_reader :out_file, 
                :read_file

    def initialize(to_read, to_write)
        @read_file = File.readlines(to_read)
        @out_file = File.new(to_write, "w") #maybe .open
        # puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"
        to_write(translate_to_braille(@read_file.join)) 
    end
end



# nightwriter = NightWriter.new
# nightwriter

require_relative './dictionary'
require_relative './translator'
require_relative './doc_writer'

class NightReaderMain
    include Dictionary
    include Translator
    include DocWriter

    attr_reader :out_file, 
                :read_file

    def initialize(to_read, to_write)
        @read_file = File.readlines(to_read)
        @out_file = File.new(to_write, "w") 
        to_write(translate_to_alphabet(braille_splitter(@read_file.join))) 
    end
end

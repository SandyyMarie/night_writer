class NightWriter

    attr_reader :out_file, 
                :read_file

    attr_writer :translated_txt

    def initialize
        @out_file = File.new(ARGV[1], "w") #maybe .open
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"

        @translated_txt = []
        write
    end

    def write
        @out_file.write(@read_file.join) #change read_file to whatever output i want
    end
end

nightwriter = NightWriter.new
nightwriter 

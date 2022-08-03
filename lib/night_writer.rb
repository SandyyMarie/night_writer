
class NightWriter

    attr_reader :out_file, 
                :read_file

    def initialize
        @out_file = File.new(ARGV[1], "w")
        @read_file = File.readlines(ARGV[0])
        puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"
    end
end

nightwriter = NightWriter.new
nightwriter 

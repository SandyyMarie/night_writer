require './lib/night_reader_main'
#runner file
def main
    running_file = NightReaderMain.new(ARGV[0], ARGV[1])
    @read_file = File.readlines(ARGV[0])
    puts "Created '#{ARGV[1]}' containing #{@read_file.join.length / 6} characters" 

end

main


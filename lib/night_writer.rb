require './lib/night_writer_main'
#runner file
def main 
    running_file = NightWriterMain.new(ARGV[0], ARGV[1])
    @read_file = File.readlines(ARGV[0])
    puts "Created '#{ARGV[1]}' containing #{@read_file.join.length} characters"

end

main


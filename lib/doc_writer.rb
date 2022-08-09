module DocWriter
    def to_write(final) #changed from name write, might need to update
        @out_file.write(final) #change read_file to whatever output i want
    end
end
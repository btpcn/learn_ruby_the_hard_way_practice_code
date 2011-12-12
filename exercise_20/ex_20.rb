# get the input file from command line argument
input_file = ARGV[0]

# define a function that print a whole file
def print_all(f)
	puts f.read()
end

# define a function that rewind the "pointer" to the beginning of a file
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

=begin
Method: IO#seek
Defined in: io.c
- (0) seek(amount, whence = IO::SEEK_SET)

Seeks to a given offset anInteger in the stream according to the value of whence:

  IO::SEEK_CUR  | Seeks to _amount_ plus current position
  --------------+----------------------------------------------------
  IO::SEEK_END  | Seeks to _amount_ plus end of stream (you probably
                | want a negative value for _amount_)
  --------------+----------------------------------------------------
  IO::SEEK_SET  | Seeks to the absolute location given by _amount_
Example:

   f = File.new("testfile")
   f.seek(-13, IO::SEEK_END)   #=> 0
   f.readline                  #=> "And so on...\n"

=end

# define a function that print a line which the "pointer" is in of a file
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

print_all(current_file)

puts "Now let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)


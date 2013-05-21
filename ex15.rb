#Take the argument passed when the script is run
filename = ARGV.first

#Sets the symbol for prompts
prompt = '> '
#Runs file.open on the argument passed when the script was run
txt = File.open(filename)

#Outputs name of file in first argument
puts "Here's your file: #{filename}"

#Takes the output of the txt function line 7 and runs .read on it
puts txt.read

#Prompts user to type the original filename again and prints prompt symbol
puts "I'll also ask you to type it again:"
print prompt
#Takes user input of filename
file_again = STDIN.gets.chomp()
#Runs file.open on file for the second time
txt_again = File.open(file_again)

#Takes the output from line 21 and displays it
puts txt_again.read
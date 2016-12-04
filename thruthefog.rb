

# read and read and read and read
# require "csv"
# require "erb"
# require 'pp'
stringdata = []
contents_file = []
lfremoved = []
lfsorted = []
master_char_qty = []
char_qty = []
#lfremoved is the stringdata array with the \n's removed
# project folder needs to be seeded with a blank report.html
# next line reads the existing HTML and assigns it to html
html = File.read("report.html")
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
puts "  "
puts "REMINDER - COMMAND K - will clear all prior console clutter"
puts "  "
# = = = = = = = = = = NOTES = = = = = = = = = = = #
# =                                             = #
# =       a markdown file is provided           = #
# =       for notes, see -  foggy.md            = #
# =          .md / mad dog                      = #
# = = = = = = = = = = NOTES = = = = = = = = = = = #
# the below works for a typical CSV with headers and rows
# CSV.foreach("string.csv", headers: true) do |row|
#  stringdata << row.to_hash
# end
# this didn't work and had to be scrubbed

contents_file = File.open('string.txt','r')
stringdata = contents_file.read()
contents_file.close()


# end do, CREATE an array of data named stringdata
# the resulting changes in the erb are integrated into the html
# the html as called out above from and a new html file is
# created from the updated file or somthing in the spirit of that
puts " ====================================================================="
puts "      File.open('string.txt','r')                                     "
puts "   stringdata array set = to the contents of the opened string file   "
puts "      {stringdata.inspect} shown below                                "
puts " ====================================================================="
puts " "
puts " #{stringdata.inspect}"
puts " "
puts " --  --  --  -- END OF STRINGDATA's INSPECTION -- -- -- -- "
puts " --  --  --  -- AND END of INITIAL IMPORT -- -- -- -- -- -- "
puts "  "
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts " "
lfremoved = stringdata.gsub("\n",'')
puts "View the new array with line feeds removed :"
puts "#{lfremoved.inspect}"
puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts "what is the character count ? #{lfremoved.length}"
puts "first character is char 0 : #{lfremoved[0]}"
puts "and lastly char 2348:  #{lfremoved[2348]}"
puts " "
lfsorted = lfremoved.chars.sort.join
puts " - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _"
puts " "
puts " using:     lfsorted = lfremoved.chars.sort.join"
puts "                   Alphabetically sorted yields :"
puts " "
puts "#{lfsorted.inspect}"
puts " "
puts " THE SOLUTION! THOUGH, IS NOT LOOKING FOR AN ALPHABETICAL SORT !!,"
puts "  it is looking for a sort using descending quantity  !!"
puts " "
puts " - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _ - _"
puts "  "
puts "hmmmmmm? let's start with a char count"
charcount = lfremoved.length
sortedcount = lfsorted.length
puts "#{charcount}"
puts "#{sortedcount}"
# just checking - they should be the same

$i = 0
# $likechar = 1
$thischarcount = 1
while $i < sortedcount  do
   # puts("$i = #{$i}" )
   # puts("$likechar = #{$likechar}" )
   # puts " test character is #{lfsorted[$i]}"
   if lfsorted[$i] == lfsorted[$i + 1]
     # puts "yes"
     $thischarcount +=1
    else
      # puts "no"
      # $likechar = 0
      puts "count: there are #{$thischarcount} of character #{lfsorted[$i]}"
      char_qty = [lfsorted[$i],$thischarcount]
      puts " inspect the array of char_qty.inspect = #{char_qty.inspect}"
      master_char_qty = master_char_qty.push(char_qty)
      $thischarcount = 1
   end # END THE IF
   $i +=1
   # $likechar +=1
end # END THE WHILE
puts "whle loop has ended, counter is at #{$i}"
puts " unprovable = ADJECTIVE, not provable; "
puts " "
puts " "

puts "master_char_qty.inspect yields an array of [char,qty] arrays - "
puts " "
puts "length of this master array is : #{master_char_qty.length}"
puts " or in index speak the array indexes : 0 to #{(master_char_qty.length) - 1}"
puts " "
puts "inspect the array generated for char and count"
puts 'using, puts #{master_char_qty.inspect} '
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts " "
puts "#{master_char_qty.inspect}"
puts " "
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts " "
puts " master_char_qty.each do |a,b|"
puts ' evaluate each iteration using - #{a} , #{b} '
puts " notice how the char and number are returned - no []'s and no string"
puts " there are 27 iterations because there are 27 2-item sub arrays in the big array."
puts " and our method assigned 2 placeholders in the pipes"
puts " "
master_char_qty.each do |a,b|
puts " checking each iteration -   #{a} , #{b} "
end
puts " "
puts " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
puts " "
puts "Now :  NOTICE THE DIFFERENCE IN THE RESULT USING - "
puts "          master_char_qty.each do |c| "
puts '          check each iteration result using -   #{c} '
puts " again, there are 27 iterations, 27 arrays in the big array"
puts " but here the returned iteration is contained in []'s "
puts " and the strings are contained in quotes ! "
puts " "
master_char_qty.each do |c|
puts " check each iteration result -   #{c} "
end
puts " "
puts "o o o o o o o o o o o o o o o o o o o o o o o o "
puts "  "
puts " Here is the actual sort performed on the containing array "
puts " notice : it's one line, no - do , no - .each do, okay , nice "
puts "master_char_qty.sort! {|x, y| y.last <=> x.last} "
puts " "
master_char_qty.sort! {|a, b| b.last <=> a.last}

puts " "
puts "#{master_char_qty.inspect}"
puts " - - - - - - - - - - - - - - - - - - - - - - - "
#  this needs work
#  new_html = ERB.new(html).result(binding)
#  puts "new_html inspect yields : #{new_html.inspect}"
#  File.open("report.html","wb") do |file|
#    file.write(new_html)
#    file.close
#  end
# the new viewable HTML is opened for write access, written to
# using the new_html and the html file is closed for browser access
puts " "
puts " END of SCRIPT "

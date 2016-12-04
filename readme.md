To execute, enter at the prompt, thruthefog.rb
Put the comma separated data in a file named string.txt

This is as close to the actual solution that i will get.
The answer is obtained via the character sort with quantity.
Solved, not pretty. Moving on.
report.html not used.

Updated to rename the original mark down file to readme.md


### Problem Definition
##### Given the scope of characters, sort the characters in the following string:
abcdefghijklmnopqrstuvwxyz_

- [ ] by the number of times the character appears in the
file provided named, string.txt
- [ ] Sort - descending, by the number of times the character
appears in the string.  Take the sorted string, drop all the characters
after (and including) the _
The remaining word is the answer.

#### The approach
- [ ] Copied the given character data to a file.
- [ ] named the file string.txt
- [ ] noticed, in pages, given data was in rows, each row ending in a line feed.
- [ ] Read data from the file using,
- 
        contents_file = File.open('string.txt','r')
        stringdata = contents_file.read()
        contents_file.close()
- [ ] This highlights the line feed at end of row, \n's at the end of each row will now appear in the data string.
- [ ] There are two ways to fix this, the first is
-
        lfremoved.delete("\n")
- [ ] This uses the gsub method, which is global sub and NOT gosub.
-
        lfremoved = stringdata.gsub("\n",'')

#### Sorting - notes:

All languages will have a concept similar to this.
An array is sorted by giving it a method (JS) or a block (ruby) - and say you are given two arguments representing the first item and the second item.
And you tell it if "a" is before, equal to, or after the input "b" , So "a" could look like ["a",94]
    "b" could look like ["s", 77]

- [ ] .sort_by {|a,b| a.last - b.last}

But know that - We use the <=> operator to compare the two arguments in the block.

##### Reference:
https://www.dotnetperls.com/sort-ruby

##### Inventorying the results -

there were 90 underscores _

94 a's
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa

93 b's
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb

88 c's
cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc

ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd

eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff

gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg

hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh

iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii

jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj

kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll

mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm

nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn

oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo

pppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp

qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq

rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr

sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss

ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt

uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu

vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy

76 z's
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz

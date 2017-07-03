vim notes

insert mode: i

normal mode: esc

navigate: hjkl or the arrow keys

append to the end of the line: when in normal mode press a

to quit without saving: :q!
to quit saving: :wq
to save with name: :w <name>

to delete a char in normal mode: press x

to delete a word in normal mode: dw

to undo: u

to redo: ctrl + r

moving:
w: moves 1 word forward (stopping at the beggining of the next word
4w: moves 4 words forward 
e: moves forward in the way that it stops at the next end of a word (current or next)
5e: moves forward 5 words
0: moves to the beginning of the line
$: moves to the end of the line
g: moves to the end of document
b: moves back a word

deleting: same as moving but with d prepended:
dw, d4e, d$
also:
dd: deletes the line
d3d: deletes two lines

p: PUT command, i.e. after a delete you can paste what you deleted with p
r: replace character under cursor (press r and then new char)
R: replace string under cursor
ce: change until the end of the word

G: go to end of file
gg: go to beggining of file
c-g: show line number
<number>+G: to go line number

search: / + <text>, n - next, N - previous
c-o: go back
c-i: go forward
:set hlsearch - highlight all results
:set ic - ignore case
or ignore case once: /bla\c

put cursor over a bracket and press %: will jump to the matching bracket

search and replace: 

:%s/searchitem/replaceitem/g - globally
:#,#%s/bla/bla/g - between lines
:%s/bla/bla/gc - globally, asking each time

:!<any shell command> - executes any shell command


copy-paste: v to select text, y to copy, p to paste after cursor

v (select text), :, :w BLA - saves selected text as BLA
:r BLA - reads BLA file and pastes its contents under the cursor
:r !ls - inserts output of ls

o: start inserting below current line
O: start inserting above current line
a: start after the cursor
A: start at the end of line
i: start at the cursor

y: yank (selection)
y2w: yarnk 2 words

Auto complete commands: : -> start writing a command -> c-d, tab

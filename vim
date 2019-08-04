Vim Stuff I learned:

Comand line in vim:
<ctrl_f> edit comand in buffer(history)
<ctrl_c> go back directly to cmdl


Reformat existing text
https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim

{motion} gq
visual gq


## Get current world When in ex command
ctrl+r ctrl+w

## Rename in bulk

1. :r !ls
2. :s/.*/mv & &/
3. :w !sh


## Map key & pipe
Usifull when debuging something 
:map ,g :w\|:!./something.sh


https://coursehunters.net/course/classic-season-1
t=5:58
rev-list --reverse ; favorite underutilized command

## Run test on range of commits you want to push

git rev-list --reverse origin/master..master | while read rev; do git co $rev &&
git clean -fd && python runtests.py; done; git co master

https://coursehunters.net/course/classic-season-1
8:02

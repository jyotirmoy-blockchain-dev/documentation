#!/usr/bin/env bash
# examples
NAME="John"
echo "Hello $NAME!"
# variables
NAME="John"
echo $NAME
echo "$NAME"
echo "${NAME}!"
# string quotes
NAME="John"
echo "Hi $NAME"  #=> Hi John
echo 'Hi $NAME'  #=> Hi $NAME
# conditional exacutions
git commit && git push
git commit || echo "Commit failed"
# functions
get_name() {
  echo "John"
}
echo "You are $(get_name)"
# shell executions
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
# conditionals
if [ -z "$string" ]; then
  echo "String is empty"
elif [ -n "$string" ]; then
  echo "String is not empty"
fi
# brace exceptions
echo {A,B}.js
{A,B}	Same as A B
{A,B}.js	Same as A.js B.js
{1..5}	Same as 1 2 3 4 5
# parameter expansion
name="John"
echo ${name}
echo ${name/J/j}    #=> "john" (substitution)
echo ${name:0:2}    #=> "Jo" (slicing)
echo ${name::2}     #=> "Jo" (slicing)
echo ${name::-1}    #=> "Joh" (slicing)
echo ${food:-Cake}  #=> $food or "Cake"
length=2
echo ${name:0:length}  #=> "Jo"
# comments
# Single line comment
: '
This is a
multi line
comment
'
# substitution
${FOO%suffix}	Remove suffix
${FOO#prefix}	Remove prefix
${FOO%%suffix}	Remove long suffix
${FOO##prefix}	Remove long prefix
${FOO/from/to}	Replace first match
${FOO//from/to}	Replace all
${FOO/%from/to}	Replace suffix
${FOO/#from/to}	Replace prefix
# length
${#FOO}	Length of $FOO
# substrings
{FOO:0:3}	Substring (position, length)
${FOO:-3:3}	Substring from the right
# default values
${FOO:-val}	$FOO, or val if not set
${FOO:=val}	Set $FOO to val if not set
${FOO:+val}	val if $FOO is set
${FOO:?message}	Show error message and exit if $FOO is not set
# loops
for i in /etc/rc.*; do
  echo $i
done
for i in {1..5}; do
    echo "Welcome $i"
done
for i in {5..50..5}; do
    echo "Welcome $i"
done
cat file.txt | while read line; do
  echo $line
done
while true; do
  ···
done
# functions
myfunc() {
    echo "hello $1"
}
# Same as above (alternate syntax)
function myfunc() {
    echo "hello $1"
}
myfunc "John"
# IMPORTANT REFERENCES
https://devhints.io/bash
http://wiki.bash-hackers.org/
https://learnxinyminutes.com/docs/bash/

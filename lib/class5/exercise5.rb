#!/usr/bin/env ruby
#
# 5 points
#
# Replace the `database` and `load` methods with your solutions from exercise 4.
#
# Write a program that displays the single record that matches a user-given id
# number.
#
# For example:
#
#   $ ruby exercise5.rb 1
#   Found record #1 from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#   Incentivized methodologies
#
# And if no records match the id number, it needs to display an error message:
#
#   $ ruby exercise5.rb 6
#   Could't find record #6 from /Users/tim/sea-c21-ruby/lib/class5/database.yml
#
# TIP #1: How do you access a single element of an array?
#
# TIP #2: The record with an id of 1 is the 0th element. The record with an id
# of 2 is the 1st element...

require 'yaml'

def database
  File.absolute_path('lib/class5/database.yml')
end

def load
  ['Incentivized methodologies',
   'Seemless innovation',
   'Corporate synergy',
   'Scalable globalization',
   'Monetized assets']
end

def find(id)
  load[id - 1]
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb POSITIVE_INTEGER' unless input > 0

record = find(input)

if record
  puts "Found record ##{input} from #{database}"
  puts record
else
  puts "Could't find record ##{input} from #{database}"
end

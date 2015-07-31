#!/usr/bin/env ruby
#Documenttext = "aAa7  bbb DDDD %
#￼￼"
#puts Documenttext

Documenttext = File.open(ARGV[0])


#new hash for storing letters
letters = {}
letters.default = 0


Documenttext.each_char do |foo|
  
  if (/[[:alpha:]]/.match(foo))
    letters[foo.downcase] += 1
  end
  
end

#puts "#{letters['a']}"
#puts "#{letters['7']}"

letters.each do |key, value|
  puts key + "	" + value.to_s
end
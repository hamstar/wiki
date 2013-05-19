#!/usr/bin/ruby

require 'open-uri'

url='http://duckduckgo.com/?q=what+is+my+ip'
file='/var/log/ips'

ip = open(url).read.match(/Your IP address is (\d+\.\d+\.\d+\.\d+)/)[1]

File.open(file, "a+") do |f|
  if !f.read.include? ip
    f.puts ip
  end
end

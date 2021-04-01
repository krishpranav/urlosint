########################################
# Author: Krish Pranav             
# Github: https://github.com/krishpranav
#Version: 0.3
##########################################

#requires
require 'colorize'
load 'core/live_resolve/live.rb'
load 'core/live_resolve/resolver.rb'
load 'core/live_resolve/Domin_ip.rb'
load 'core/sub_enum/subdomain.rb'
load 'core/sub_enum/subenum.rb'
load 'core/dirbrute/brute.rb'
load 'core/ext/wtweb.rb'
load 'core/ext/shodan.rb'

$choice
class Start

  def webrub

    puts """
=====================================================================
|                            WebRub                                 |
=====================================================================
| 1-Subdomain Enumeration (Very Fast)  7-Extract Web Headers (Fast) |
| 2-Subdomain BruteForce (Fast)        8-Shodan Searcher (Fast)     |
| 3-live domain checker (Fast)                                      |
| 4-Resolve domains to ips (Fast)                                   |
| 5-Resolve ips to domains (Fast)                                   |
| 6-Directory BruteForce (Fast)                                     |
=====================================================================
|                              V0.3                                 |
=====================================================================
""".red

    puts "Enter Your Choice(ex: 1,2,3,4,5,6):".red
    $choice=gets.chomp.to_i
  end

  

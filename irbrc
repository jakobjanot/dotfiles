require 'rubygems'
 
# This makes pry itself and all pry gems available
$LOAD_PATH.push(*Dir["#{ENV['HOME']}/.prygems/gems/*/lib"]).uniq!
 
begin
# Use Pry everywhere
require 'pry'
rescue LoadError => e
end
 
if defined? Pry
 
Pry.start
exit
 
else
 
# Do your normal IRB stuff in case Pry is not available
 
end 

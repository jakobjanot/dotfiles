# We do this here as well in case pry was not started through IRB,
# but for example from rails console with pry being in the Gemfile
$LOAD_PATH.push(*Dir["#{ENV['HOME']}/.prygems/gems/*/lib"]).uniq!
 
# Further Pry configuration
 
Pry.config.editor = "ENV['EDITOR']"
 
# My pry is polite
Pry.hooks = { :after_session => proc { puts "bye-bye" } }
 
# Prompt with ruby version
Pry.prompt = [
proc { |obj, nest_level| "#{RUBY_ENGINE}-#{RUBY_VERSION} (#{obj})#{":#{nest_level}" if nest_level > 0}> " },
proc { |obj, nest_level| "#{RUBY_ENGINE}-#{RUBY_VERSION} (#{obj})#{":#{nest_level}" if nest_level > 0}* " }
]
 
# etc. 

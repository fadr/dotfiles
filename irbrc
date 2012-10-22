#!/usr/bin/ruby

## PROMPT
IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => ">> ",
  :PROMPT_S => "%l>> ",
  :PROMPT_C => ".. ",
  :PROMPT_N => ".. ",
  :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true

# idea stolen from irbtools, implementation might be different
class Object
  def d
    self.tap { |s| puts s }
  end
end

require 'rubygems'

begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

begin
  require 'looksee/shortcuts'
rescue LoadError => err
  warn "Coudn't load gem: #{err}"
end
require "ap"

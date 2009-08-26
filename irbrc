#!/usr/bin/ruby

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
  require 'hirb'
  Hirb.enable
rescue LoadError
end
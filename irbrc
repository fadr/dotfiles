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
  require "ap"
rescue LoadError => err
  warn "Coudn't load awesome_print"
end
$: << File.join(File.dirname(__FILE__), '..', 'lib')

require 'pry' if ENV['APP_ENV'] == 'debug' # add `binding.pry` wherever you need to debug
require 'bubble'
require 'insertion'
require 'binary'
require 'quick_sort'

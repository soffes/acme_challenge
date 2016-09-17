$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'acme_challenge'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::DefaultReporter.new

require 'minitest/autorun'

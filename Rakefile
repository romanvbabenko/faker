$:.unshift File.dirname(__FILE__)

Dir['lib/tasks/**/*.rake'].each { |rake| load rake }

require 'bundler'
Bundler::GemHelper.install_tasks

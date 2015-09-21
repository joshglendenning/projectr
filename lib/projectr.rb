require 'projectr/version'
require 'json'

module Projectr
	PROJECT_PATH = "#{Dir.home}/.projectr"
	def self.list
		dirs = Dir.entries(PROJECT_PATH).select {|f| !File.directory? f}
		dirs.each { |dir| puts dir }
	end
end

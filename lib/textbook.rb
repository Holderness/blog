require_relative '../lib/page'

class Textbook
	def initialize(file)
		@file = file
	end

	def insert(page)
	  File.open(Tempfile.new(@file), 'w') do |file|
		file << page
	  end
	end

	def to_s
      File.read(Tempfile.new(@file))
    end
end




	# File.open('/tmp/cowspeak.txt', 'a') do |s|
	# s << $lunch
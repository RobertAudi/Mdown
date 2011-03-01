module Mdown
	class App
		def initialize(file)
			check_file! file
			@file = file
		end

		def preview!
      preview = Maruku.new(File.open(@file).read).to_html
			exec "echo \"#{preview}\" | bcat"
		end

		private

		def check_file!(file)
			unless File.exists?(file)
				raise "Unable to find file #{file}"
				exit
			end
			return
		end
	end
end

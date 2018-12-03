require 'net/ftp'
class Ftpcr < ApplicationRecord
	has_many :ftpfiles

	def copy_files
		Net::FTP.open(self.ip,self.username,self.password) do |ftp|
			files = ftp.chdir('/')
			ftp.nlst('*').each do |file_name|
				ftp.getbinaryfile(file_name, Rails.root.join('public'))

				ftpfiles.create(file_name: file_name)
			end
		end
	end
end

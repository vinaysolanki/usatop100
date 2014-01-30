class Video < ActiveRecord::Base
	attr_accessor :url

	def fetch_url(title, artist)
		url = YoutubeSearch.search("#{title} by #{artist}").first
		url
	end
end

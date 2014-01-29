require 'open-uri'

class Song < ActiveRecord::Base
	
	def self.top_100
		songs = []
		doc = Nokogiri::XML(open('http://www.billboard.com/rss/charts/hot-100'))
		items = doc.xpath("//item")
		items.each do |title|
			songs << { :title => title.xpath('chart_item_title').text, :artist => title.xpath('artist').text }
		end
		songs
	end
end

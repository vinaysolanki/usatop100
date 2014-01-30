require 'spec_helper'

describe Video do
	it "should fetch url from youtube for the given title and artist" do
		video = Video.new
		url = video.fetch_url("Wrecking Ball", "Miley Cyrus")
		expect(url['video_id']).to eq('My2FRPA3Gf8')
	end
end

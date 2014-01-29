require 'spec_helper'

describe Song do
	it "should return top 100 songs list" do
		expect(Song.top_100).to be_a_kind_of(Array)	
		expect(Song.top_100.count).to be(100)
		expect(Song.top_100.first[:title]).to be_a_kind_of(String)
		expect(Song.top_100.first[:artist]).to be_a_kind_of(String)
	end
end

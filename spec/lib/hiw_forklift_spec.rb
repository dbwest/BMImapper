require 'spec_helper'

describe HiwForklift::Wrapper do

  it "must work" do
    true.should == true
  end

  it "must include httparty methods" do
    HiwForklift::Wrapper.base_uri.should == 'http://services.healthindicators.gov/v5/REST.svc'
  end

end

# from the tutorial at http://code.tutsplus.com/articles/writing-an-api-wrapper-in-ruby-with-tdd--net-23875
# describe "default instance attributes" do
#
#   let(:player) { Dish::<span class="skimlinks-unlinked">Player.new('simplebits</span>
#
#   it "must have an id attribute" do
#     player.must_respond_to :username
#   end
#
#   it "must have the right id" do
#     player.username.must_equal 'simplebits'
#   end
#
# end

# from the tutorial at http://code.tutsplus.com/articles/writing-an-api-wrapper-in-ruby-with-tdd--net-23875
# describe "caching" do
#
#   # we use Webmock to disable the network connection after
#   # fetching the profile
#   before do
#     player.profile
#     stub_request(:any, /<span class="skimlinks-unlinked">api.dribbble.com/).to_timeout</span>
#   end
#
#   it "must cache the profile" do
#     player.profile.must_be_instance_of Hash
#   end
#
#   it "must refresh the profile if forced" do
#     lambda { player.profile(true) }.must_raise Timeout::Error
#   end
#
# end


# from the tutorial at http://code.tutsplus.com/articles/writing-an-api-wrapper-in-ruby-with-tdd--net-23875
# describe "GET profile" do
#
#   let(:player) { Dish::<span class="skimlinks-unlinked">Player.new</span> }
#
#   before do
#     VCR.insert_cassette 'player', :record => :new_episodes
#   end
#
#   after do
#     VCR.eject_cassette
#   end
#
#   it "must have a profile method" do
#     player.must_respond_to :profile
#   end
#
#   it "must parse the api response from JSON to Hash" do
#     player.profile.must_be_instance_of Hash
#   end
#
#   it "must perform the request and get the data" do
#     player.profile["username"].must_equal 'simplebits'
#   end
#
# end
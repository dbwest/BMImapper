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
describe "default instance attributes" do

   let(:indicator) { HiwForklift::Wrapper.new(keyword: 'BMI') }

   it "must have an id attribute" do
     expect(indicator.respond_to?(:id)).to be true
   end

   it "must have the right id" do
     expect(indicator.id).to be 2
   end

end

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
 describe "GET indicator" do

   let(:query) { HiwForklift::Wrapper.new }

   before do
     VCR.insert_cassette 'wrapper', :record => :new_episodes
   end

   after do
     VCR.eject_cassette
   end
   
   it "records the fixture" do
     HiwForklift::Wrapper.get('/Keywords/1')
   end
   
   it "must have an indicator method" do
     expect(query.respond_to?(:record)).to be true
   end

   it "must parse the api response from JSON to Hash" do
     expect(query.record.instance_of?(Hash)).to be true
   end

   it "must perform the request and get the data" do
     expect(query.record["Data"][0]["Name"]).to be '1,2,3,6,7,8-hexachlorodibenzo-p-dioxin'
   end

end
require 'spec_helper'

describe "TweetPages" do
  describe "GET /tweet_pages" do
    #before(:all) {
    #  puts 'hoge'
    #  puts page.current_url
    #  @work = 1
    #  @page = page
    #}
    before(:each){
      visit tweets_path
      #puts 'each'
      #p page.current_url
    }
    after(:each){
      #puts 'after each'
      #p page.current_url
    }
    subject {
      #puts 'sub'
      page
    }
    #let(:page1){
    #  puts 'let'
    #  p @work
    #  p @page.current_url
    #  @page
    #}
    context do
			it {
        #puts 'it1'
        #subject.status_code.should == 200
        should have_selector 'input'
        #p page1.current_url
      }
    end
    context 'aaa' do
    #context 'aaa', focus: true do
      its('current_url.blank?') {
        #puts 'it2'
        #p page1.current_url
        should == false
      }
    end
  end
end

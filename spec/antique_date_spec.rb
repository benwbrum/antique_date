require 'antique_date'
require 'pp'

describe AntiqueDate do
  it "should exist" do
#    pp AntiqueDate.methods
    AntiqueDate::prove_your_existance.should_not eq(nil)
    print AntiqueDate::prove_your_existance
  end

 it "should see a regime" do
#    pp AntiqueDate.methods
    AntiqueDate::SCOTLAND.should_not eq(nil)
    print AntiqueDate::SCOTLAND
    AntiqueDate::SCOTLAND.nyd.should eq(1600)
  end
end
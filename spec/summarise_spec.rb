require "spec_helper"

describe "summarise" do
  before :all do
    @string = "The rain in Spain falls mainly on the plain"
    @html = "<p>The rain in Spain <strong>falls <i>mainly</i></strong> on the plain</p>"
  end

  it "should not shorten a short string" do
    expect(@string.summarise).to eq(@string)
  end

  it "should shorten a string" do
    expect(@string.summarise(10)).to eq("The rain in")
  end

  it "should shorten an html string" do
    expect(@html.summarise(10)).to eq("<p>The rain in</p>")
    expect(@html.summarise(20)).to eq("<p>The rain in Spain <strong>falls</strong></p>")
  end
end
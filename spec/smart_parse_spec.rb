RSpec.describe SmartParse do
  it "has a version number" do
    expect(SmartParse::VERSION).not_to be "0.1.0"
  end

  it "test most views" do
    expect(SmartParse.most_views("spec/fixture/webserver.log")).to eq([["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]])
  end

  it "test most uniq views" do
    expect(SmartParse.most_unique_views("spec/fixture/webserver.log")).to eq([["/index", 23], ["/home", 23], ["/contact", 23], ["/help_page/1", 23], ["/about/2", 22], ["/about", 21]])
  end
end

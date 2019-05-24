RSpec.describe Formatter do
  it "test the pretty format" do
    expect(Formatter.pretty([["smart_pension", 999], ["help", 0]])).to eq(["smart_pension 999 visits", "help 0 visits"])
  end

  it "test the pretty unique format" do
    expect(Formatter.pretty_unique([["smart_pension", 999], ["help", 0]])).to eq(["smart_pension 999 unique views", "help 0 unique views"])
  end
end

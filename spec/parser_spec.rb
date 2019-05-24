RSpec.describe SmartParse do
  it "run cli" do
    expect(system("./parser.rb", "../smart_test/spec/fixtures/webserver.log")).to eq(true)
  end
end

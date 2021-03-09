RSpec.describe KcSampleGem do
  it "has a version number" do
    expect(KcSampleGem::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(KcSampleGem.greeting).to eq 'Hello Kwanji!'
  end
end

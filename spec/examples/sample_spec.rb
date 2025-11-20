# frozen_string_literal: true

# This is a sample spec file to demonstrate the formatter's behavior

RSpec.describe "Sample tests" do
  it "passes successfully" do
    expect(1 + 1).to eq(2)
  end

  it "another passing test" do
    expect("hello").to match(/ell/)
  end

  it "is pending", pending: "Not yet implemented" do
    expect(true).to be(false)
  end

  it "is also pending", skip: "Skipping for now" do
    raise "This should not run"
  end

  it "passes again" do
    expect([1, 2, 3]).to include(2)
  end

  it "one more pending test" do
    pending "Will implement later"
    expect(nil).to be_truthy
  end

  it "final passing test" do
    expect(true).to be_truthy
  end
end

# frozen_string_literal: true

require "spec_helper"
require "stringio"

RSpec.describe RSpecPendingFilterFormatter::Formatter do
  let(:output) { StringIO.new }
  let(:formatter) { described_class.new(output) }

  before do
    allow(RSpec.configuration).to receive(:color_enabled?).and_return(false)
  end

  describe "#example_pending" do
    it "outputs '*' for pending examples" do
      notification = double("notification")

      formatter.example_pending(notification)

      expect(output.string).to eq("*")
    end
  end

  describe "#dump_pending" do
    it "does not output anything" do
      notification = double("notification")

      formatter.dump_pending(notification)

      expect(output.string).to be_empty
    end
  end
end

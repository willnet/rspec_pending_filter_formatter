# frozen_string_literal: true

require "rspec/core/formatters/progress_formatter"

module RSpecPendingFilterFormatter
  class Formatter < RSpec::Core::Formatters::ProgressFormatter
    RSpec::Core::Formatters.register self, :dump_pending

    # Override to suppress pending examples output
    def dump_pending(_notification)
      # Do nothing - the pending count will be displayed elsewhere
    end
  end
end

# frozen_string_literal: true

require_relative '../../test_helper'

module SimpleMonads
  class FailureResultTest < Minitest::Test
    def setup
      @failure = FailureResult.new(2)
    end

    def test_inspect
      assert_equal('Failure(2)', @failure.inspect)
    end
  end
end

# frozen_string_literal: true

require_relative '../../test_helper'

module SimpleMonads
  class SuccessResultTest < Minitest::Test
    def setup
      @failure = SuccessResult.new(2)
    end

    def test_inspect
      assert_equal('Success(2)', @failure.inspect)
    end
  end
end

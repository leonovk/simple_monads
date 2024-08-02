# frozen_string_literal: true

require_relative 'base_result'

module SimpleMonads
  # success object
  class SuccessResult < BaseResult
    alias success object

    def failure?
      false
    end

    def success?
      true
    end
  end
end

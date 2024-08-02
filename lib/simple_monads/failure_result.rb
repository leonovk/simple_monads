# frozen_string_literal: true

require_relative 'base_result'

module SimpleMonads
  # failure object
  class FailureResult < BaseResult
    alias failure object

    def failure?
      true
    end

    def success?
      false
    end
  end
end

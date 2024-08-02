# frozen_string_literal: true

module SimpleMonads
  # failure object
  class FailureObject
    attr_reader :object

    def initialize(object)
      @object = object
    end

    def failure?
      true
    end

    def success?
      false
    end

    def inspect
      "Failure(#{object})"
    end
  end
end

# frozen_string_literal: true

module SimpleMonads
  # success object
  class SuccessObject
    attr_reader :object
    alias success object

    def initialize(object = nil)
      @object = object
    end

    def failure?
      false
    end

    def success?
      true
    end

    def inspect
      "Success(#{object})"
    end
  end
end

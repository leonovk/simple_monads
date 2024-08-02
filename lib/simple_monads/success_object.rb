# frozen_string_literal: true

module SimpleMonads
  # success object
  class SuccessObject
    attr_reader :object

    def initialize(object)
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

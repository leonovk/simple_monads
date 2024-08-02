# frozen_string_literal: true

module SimpleMonads
  # Base Result monads
  class BaseResult
    attr_reader :object

    def initialize(object = nil)
      @object = object
    end

    def success_or(value)
      failure? ? value : success
    end

    def inspect
      "#{self.class.to_s[14..-7]}(#{object})"
    end
  end
end

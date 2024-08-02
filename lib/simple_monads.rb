# frozen_string_literal: true

require_relative 'simple_monads/failure_result'
require_relative 'simple_monads/success_result'

# Main module
module SimpleMonads
  def Success(object = nil) # rubocop:disable Naming/MethodName
    SuccessResult.new(object)
  end

  def Failure(object = nil) # rubocop:disable Naming/MethodName
    FailureResult.new(object)
  end
end

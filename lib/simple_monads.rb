# frozen_string_literal: true

require_relative 'simple_monads/failure_object'
require_relative 'simple_monads/success_object'

# Main module
module SimpleMonads
  def Success(object) # rubocop:disable Naming/MethodName
    SuccessObject.new(object)
  end

  def Failure(object) # rubocop:disable Naming/MethodName
    FailureObject.new(object)
  end
end

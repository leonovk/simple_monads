# frozen_string_literal: true

require_relative '../test_helper'

class SomeClass
  include SimpleMonads

  def return_failure
    Failure({ error: 'text' })
  end

  def return_success
    Success(5)
  end

  def return_empty_success
    Success()
  end
end

class SimpleMonadsTest < Minitest::Test
  def setup
    @object = SomeClass.new
  end

  def test_failure
    result = @object.return_failure

    assert_predicate result, :failure?
    refute_predicate result, :success?

    assert_equal({ error: 'text' }, result.failure)
  end

  def test_success
    result = @object.return_success

    assert_predicate result, :success?
    refute_predicate result, :failure?

    assert_equal(5, result.success)
  end

  def test_empty_success
    result = @object.return_empty_success

    assert_predicate result, :success?
    refute_predicate result, :failure?

    assert_nil(result.success)
  end

  def test_success_or
    result_success = @object.return_success
    result_failure = @object.return_failure

    assert_equal(7, result_failure.success_or(7))
    assert_equal(5, result_success.success_or(14.54))
  end
end

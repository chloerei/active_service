require 'test_helper'

class ActiveService::BaseTest < Minitest::Test
  class FoobarService < ActiveService::Base
  end

  def test_should_inhert_base
    assert FoobarService.new
  end
end

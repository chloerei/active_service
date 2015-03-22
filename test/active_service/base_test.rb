require 'test_helper'

class ActiveService::BaseTest < Minitest::Test
  class FoobarService < ActiveService::Base
  end

  class HelloService < ActiveService::Base
    def initialize(name)
      @name = name
    end

    def say_hello
      "Hello #{@name}!"
    end
  end

  def test_should_inhert_base
    assert FoobarService.new
  end

  def test_hello_service
    hello_service = HelloService.new('David')
    assert_equal 'Hello David!', HelloService.new('David').say_hello
  end
end

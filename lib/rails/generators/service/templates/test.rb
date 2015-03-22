require 'test_helper'

<% module_namespacing do -%>
class <%= class_name %>ServiceTest < ActiveService::TestCase
  # def test_true
  #   assert true
  # end
end
<% end -%>

require "active_service/version"
require "active_service/base"

if defined?(Rails)
  require "active_service/test_case"
  require "active_service/railtie"
end

module ActiveService
end

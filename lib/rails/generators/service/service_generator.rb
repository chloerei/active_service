require 'rails/generators/named_base'

module Rails
  module Generators
    class ServiceGenerator < Rails::Generators::NamedBase
      desc 'This generator creates a service file at app/services'

      def self.default_generator_root
        File.dirname(__FILE__)
      end

      check_class_collision suffix: 'Service'

      def create_service_file
        template 'service.rb', File.join('app/services', class_path, "#{file_name}_service.rb")
      end

      def create_test_file
        template 'test.rb', File.join('test/services', class_path, "#{file_name}_test.rb")
      end

    end
  end
end

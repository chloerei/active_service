require 'rails/generators/named_base'

module Rails
  module Generators
    class ServiceGenerator < Rails::Generators::NamedBase
      desc 'This generator creates an service file at app/services'

      def self.default_generator_root
        File.dirname(__FILE__)
      end

      check_class_collision suffix: 'Job'

      def create_job_file
        template 'service.rb', File.join('app/services', class_path, "#{file_name}_service.rb")
      end

    end
  end
end

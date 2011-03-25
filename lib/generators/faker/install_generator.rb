module Faker
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Creates a Faker initializer and copy locale files to your application."
      class_option :orm

      def copy_initializer
        template "faker.rb", "config/initializers/faker.rb"
      end

      def copy_locale
        copy_file "../../../locales/en.yml", "config/locales/faker.en.yml"
      end

    end
  end
end

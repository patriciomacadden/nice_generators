module Nice
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'Copy scaffold templates into your rails application'
      source_root File.expand_path '../templates', __FILE__

      class_option :template_engine

      def copy_templates
        engine = options[:template_engine]

        copy_file "#{engine}/_form.html.#{engine}", "lib/templates/#{engine}/scaffold/_form.html.#{engine}"
        copy_file "#{engine}/edit.html.#{engine}", "lib/templates/#{engine}/scaffold/edit.html.#{engine}"
        copy_file "#{engine}/index.html.#{engine}", "lib/templates/#{engine}/scaffold/index.html.#{engine}"
        copy_file "#{engine}/new.html.#{engine}", "lib/templates/#{engine}/scaffold/new.html.#{engine}"
        copy_file "#{engine}/show.html.#{engine}", "lib/templates/#{engine}/scaffold/show.html.#{engine}"

        copy_file 'nice.en.yml', 'config/locales/nice.en.yml'
      end
    end
  end
end

module Nice
  module Generators
    class LayoutGenerator < Rails::Generators::NamedBase
      desc 'Creates a nice layout'
      source_root File.expand_path '../templates', __FILE__

      class_option :template_engine

      def create_layout
        engine = options[:template_engine]

        template "#{engine}/application.html.#{engine}.tt", "app/views/layouts/#{file_name}.html.#{engine}"
        template "layout_helper.rb.tt", "app/helpers/layout_helper.rb"
      end

      private

      def app_name
        @app_name ||= defined_app_const_base? ? defined_app_name : File.basename(destination_root)
      end

      def defined_app_name
        defined_app_const_base.underscore
      end

      def defined_app_const_base
        Rails.respond_to?(:application) && defined?(Rails::Application) &&
          Rails.application.is_a?(Rails::Application) && Rails.application.class.name.sub(/::Application$/, "")
      end
      alias :defined_app_const_base? :defined_app_const_base

      def app_const_base
        @app_const_base ||= defined_app_const_base || app_name.gsub(/\W/, '_').squeeze('_').camelize
      end
      alias :camelized :app_const_base      
    end
  end
end

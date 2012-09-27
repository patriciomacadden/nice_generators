require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Nice
  module Generators
    class ScaffoldControllerGenerator < Rails::Generators::ScaffoldControllerGenerator
      source_root File.expand_path('../templates', __FILE__)
    end
  end
end

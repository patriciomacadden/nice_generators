require 'rails/generators/rails/scaffold/scaffold_generator'

module Nice
  module Generators
    class ScaffoldGenerator < Rails::Generators::ScaffoldGenerator
      remove_hook_for :scaffold_controller
      
      hook_for :scaffold_controller do |scaffold_controller|
        invoke 'nice:scaffold_controller', [name, attributes.collect { |a| "#{a.name}:#{a.type}" }]
      end
    end
  end
end

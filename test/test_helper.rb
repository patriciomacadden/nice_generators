# configure rails environment
ENV['RAILS_ENV'] = 'test'

require 'test/unit'
require 'rails/generators'
require 'rails/generators/test_case'

# require nice generators
require 'generators/nice/install/install_generator'
require 'generators/nice/layout/layout_generator'
require 'generators/nice/scaffold/scaffold_generator'
require 'generators/nice/scaffold_controller/scaffold_controller_generator'

# require nice generators tests
require 'generators/install_generator_test'
require 'generators/layout_generator_test'
require 'generators/scaffold_generator_test'
require 'generators/scaffold_controller_generator_test'

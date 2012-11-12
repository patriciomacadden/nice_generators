require 'test_helper'

class LayoutGeneratorTest < Rails::Generators::TestCase
  tests Nice::Generators::LayoutGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'should create layout' do
    run_generator %w(application)

    assert_file 'app/views/layouts/application.html.erb'
  end
end

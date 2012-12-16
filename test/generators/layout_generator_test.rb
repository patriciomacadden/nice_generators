require 'test_helper'

class LayoutGeneratorTest < Rails::Generators::TestCase
  tests Nice::Generators::LayoutGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'should create an erb layout' do
    run_generator %w(application)

    assert_file 'app/views/layouts/application.html.erb'
    assert_file 'app/helpers/layout_helper.rb'
  end

  test 'should create a slim layout' do
    run_generator %w(application -e slim)

    assert_file 'app/views/layouts/application.html.slim'
    assert_file 'app/helpers/layout_helper.rb'
  end
end

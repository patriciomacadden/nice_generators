require 'test_helper'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Nice::Generators::InstallGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'should create all scaffold files (erb templates) and nice.en.yml file' do
    run_generator

    assert_file 'lib/templates/erb/scaffold/_form.html.erb'
    assert_file 'lib/templates/erb/scaffold/edit.html.erb'
    assert_file 'lib/templates/erb/scaffold/index.html.erb'
    assert_file 'lib/templates/erb/scaffold/new.html.erb'
    assert_file 'lib/templates/erb/scaffold/show.html.erb'
    assert_file 'config/locales/nice.en.yml'
  end

  test 'should create all scaffold files (slim templates) and nice.en.yml file' do
    run_generator %w(-e slim)

    assert_file 'lib/templates/slim/scaffold/_form.html.slim'
    assert_file 'lib/templates/slim/scaffold/edit.html.slim'
    assert_file 'lib/templates/slim/scaffold/index.html.slim'
    assert_file 'lib/templates/slim/scaffold/new.html.slim'
    assert_file 'lib/templates/slim/scaffold/show.html.slim'
    assert_file 'config/locales/nice.en.yml'
  end
end
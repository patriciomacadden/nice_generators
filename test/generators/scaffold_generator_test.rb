require 'test_helper'

class ScaffoldGeneratorTest < Rails::Generators::TestCase
  tests Nice::Generators::ScaffoldGenerator
  destination File.expand_path('../../tmp', __FILE__)
  
  setup do
    prepare_destination
    Dir.mkdir("#{destination_root}/config") unless File.exists?("#{destination_root}/config")
    File.open("#{destination_root}/config/routes.rb", 'w') do |f|
      f.puts "Rails.application.routes.draw do\n\nend"
    end
  end

  test 'should create a scaffold (erb templates)' do
    run_generator %w(person first_name last_name)

    assert_file 'app/controllers/people_controller.rb'
    # app/models/person.rb is created by activerecord
    assert_file 'app/views/people/_form.html.erb'
    assert_file 'app/views/people/edit.html.erb'
    assert_file 'app/views/people/index.html.erb'
    assert_file 'app/views/people/new.html.erb'
    assert_file 'app/views/people/show.html.erb'
  end

  test 'should create a scaffold (slim templates)' do
    run_generator %w(person first_name last_name -e slim)

    assert_file 'app/controllers/people_controller.rb'
    # app/models/person.rb is created by activerecord
    assert_file 'app/views/people/_form.html.slim'
    assert_file 'app/views/people/edit.html.slim'
    assert_file 'app/views/people/index.html.slim'
    assert_file 'app/views/people/new.html.slim'
    assert_file 'app/views/people/show.html.slim'
  end
end

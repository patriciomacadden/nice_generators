# Nice Generators

Nice generators for rails 3.

## Installation

1. Add `nice_generators` to your `Gemfile`:

```
gem 'nice_generators'
```

2. Install it using `bundle install`

3. Run the following command to install some templates and the translation file (`config/locales/nice.en.yml`):

```
rails generate nice:install
```

4. Generate!

```
rails generate nice:scaffold article title:string body:text
rails generate nice:scaffold_controller comment name:string body:text post_id:integer
```

## Features

* Controller and views are fully i18n'ed.

## Integration with simple_form

You can use nice_generators along with [simple_form](https://github.com/plataformatec/simple_form). Simply run `rails generate simple_form:install` after running `rails generate nice:install`.

```
rails generate nice:install
rails generate simple_form:install
```

## Contributing

1. Fork it
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Send pull request

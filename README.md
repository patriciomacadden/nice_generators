# Nice Generators

Nice generators for rails 3.

[![Build Status](https://travis-ci.org/patriciomacadden/nice_generators.png)](https://travis-ci.org/patriciomacadden/nice_generators)

[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/patriciomacadden/nice_generators)

## Installation

Add `nice_generators` to your `Gemfile`:

```
gem 'nice_generators'
```

Install it using `bundle install`

Run the following command to install some templates and the translation file (`config/locales/nice.en.yml`):

```
rails generate nice:install
```

## Available generators

* `install` generator

```
rails generate nice:install
```

This generator was already explained: it allows us to use `nice_generators`.

* `scaffold` generator

```
rails generate nice:scaffold article title:string body:text
```

It's just like `rails generate scaffold article title:string body:text`, but with some *nice* features.

* `scaffold_controller` generator

```
rails generate nice:scaffold_controller comment name:string body:text post_id:integer
```

It's just like `rails generate scaffold_controller article name:string body:text post_id:integer`, but with some *nice* features.

## Features

* Generated controllers are refactored
* Generated controllers and views are fully i18n'ed
* Generated controllers uses `respond_to` and `respond_with`

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

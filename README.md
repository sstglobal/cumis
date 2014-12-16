# Cumis

Cumis is _CMS_ for _u_ and _i_!  

Cumis is a Ruby CMS that works with Rails and [RailsAdmin](https://github.com/sferik/rails_admin).  
Install the gem and use it to quickly setup pages for your users to edit.

Cumis currently creates a simple database table (via migration) and setup the routing system.  
With this infrastucture, you can use any admin gem (or build your own!) such as [RailsAdmin](https://github.com/sferik/rails_admin) to CRUD your pages and easily route url to your pages.

## Installation

Add this line to your application's Gemfile:

    gem 'cumis'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cumis

## Setup

After installing the gem, run the following:

```ruby
rails generate cumis:install
```

It will create a migration file (CreatePages) for you which is a database table to store the webpage content.  
Next, run the database migration:

```ruby
rake db:migrate
```

Read your `db/schema.rb` to know the fields of the Pages table.

## Create/Update Page

You can create/update a page via [RailsAdmin](https://github.com/sferik/rails_admin) or your own backend as it can directly CRUD the database table.  
If not, you can also create a page via `rails console`.

## Routing a Page

Once a page is created, you need to setup routes for it in your `routes.rb`.  
The route to be created is in the format of: `get '<url-name>' => 'pages#show', ref: '<page-ref>'`  
The `page-ref` field corresponds to the `ref` field in the Page table.

The following example routes `http://example.com/about-us` to the About Us page:

```ruby
get 'about-us' => 'pages#show', id: 'about-us'
```

## Roadmap

- Add menu system

Any feature requests, please raise an issue in this Github page.

## Contributing

1. Fork it ( https://github.com/neember/cumis/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

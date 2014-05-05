Capistrano::basement
======

This gem provides a solid basic rails stack (might support more stuff in the future) for Capistrano 3.x

Installation
------

Add this to your application's Gemfile:

    gem "capistrano", "~> 3.1"
    gem "capistrano-basement", github: "lodgem/capistrano-basement"

And then execute:

    $ bundle install

Usage
------

Configurable options:

    set :stage,             "production"
    set :rails_env,         "production"
    set :application,       "app"
    set :server_name,       "domain.com"
    set :puma_init_name,    "#{fetch(:application)}-web"
    set :puma_pid_path,     "#{shared_path}/tmp/pids/puma.pid"
    set :sidekiq_init_name, "#{fetch(:application)}-worker"
    set :sidekiq_pid_path,  "#{shared_path}/tmp/pids/sidekiq.pid"


Contributing
------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

About
-------

![Lodgem](http://lodgem.s3.amazonaws.com/tm/logotype.png)

Lodgem is small team of passionate who enjoy creating polished applications that solve interesting problems. We consider ourselves as friendly, hard workers and dynamic. We love to see things differently and strongly believe in progress and innovation.

At Lodgem, we use open source software a lot and that's why we try hard to share as much as possible.
